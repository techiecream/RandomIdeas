import os
import librosa
import pygame.mixer
import datetime
import random
import sqlite3
import time
from contextlib import contextmanager

# Context manager for the database connection
@contextmanager
def open_database_connection():
    connection = sqlite3.connect("songs.db")
    try:
        yield connection
    finally:
        connection.close()

# Function to create a database and table if they don't exist
def create_database():
    with open_database_connection() as connection:
        cursor = connection.cursor()
        cursor.execute('''CREATE TABLE IF NOT EXISTS songs
                          (file_path TEXT PRIMARY KEY, tempo FLOAT, play_count INTEGER DEFAULT 0)''')
        connection.commit()

# Function to update the table after the song is played
def update_play_count(file_path, play_count=1):
    with open_database_connection() as connection:
        cursor = connection.cursor()
        cursor.execute("UPDATE songs SET play_count = play_count + ? WHERE file_path=?", (play_count, file_path))
        connection.commit()

# Function to check if a song is already in the database
def is_song_in_database(file_path):
    with open_database_connection() as connection:
        cursor = connection.cursor()
        cursor.execute("SELECT COUNT(*) FROM songs WHERE file_path=?", (file_path,))
        return cursor.fetchone()[0] > 0

# Function to add a song to the database
def add_song_to_database(file_path, tempo):
    with open_database_connection() as connection:
        cursor = connection.cursor()
        if not is_song_in_database(file_path):
            cursor.execute("INSERT INTO songs (file_path, tempo) VALUES (?, ?)", (file_path, tempo))
            connection.commit()
        else:
            print("Song already exists in the database:", file_path)

# Function to get the tempo of a song from the database
def get_tempo_from_database(file_path):
    with open_database_connection() as connection:
        cursor = connection.cursor()
        cursor.execute("SELECT tempo FROM songs WHERE file_path=?", (file_path,))
        result = cursor.fetchone()
        return result[0] if result else None

# Function to get the play count of a song from the database
def get_play_count_from_database(file_path):
    with open_database_connection() as connection:
        cursor = connection.cursor()
        cursor.execute("SELECT play_count FROM songs WHERE file_path=?", (file_path,))
        result = cursor.fetchone()
        return result[0] if result else 0

# Get a list of unplayed songs from the database
def get_unplayed_songs(exclude_play_count=None):
    with open_database_connection() as connection:
        cursor = connection.cursor()
        if exclude_play_count is None:
            cursor.execute("SELECT file_path FROM songs WHERE play_count=0")
        else:
            cursor.execute("SELECT file_path FROM songs WHERE play_count>?", (exclude_play_count,))
        return [row[0] for row in cursor.fetchall()]

# Determine the time range based on the current hour
def get_bpm_range(current_time):
    current_hour = current_time.hour
    if 5 <= current_hour < 9:
        return 'morning'
    elif 9 <= current_hour < 12:
        return 'afternoon'
    elif 12 <= current_hour < 15:
        return 'evening'
    else:
        return 'power'

# Display the playlist
def display_playlist(optimal_songs):
    print("===========================Your Playlist:===========================")
    if not optimal_songs:
        print("No songs found within the optimal BPM range.")
        return

    total_time_seconds = 0
    for song_path in optimal_songs:
        filename = os.path.basename(song_path)
        tempo = get_tempo_from_database(song_path)
        print("Name: {}, Tempo: {} BPM".format(filename, tempo))
        total_time_seconds += librosa.get_duration(y=librosa.load(song_path)[0])

    total_time_minutes = total_time_seconds / 60
    total_time_hours = total_time_minutes / 60
    print("Total Time: {:.2f} minutes ({:.2f} hours)".format(total_time_minutes, total_time_hours))

    stop_time = datetime.datetime.now()
    print("Stopped at: {}".format(stop_time))

# Play a song using pygame
def play_song(file_path):
    try:
        pygame.mixer.music.load(file_path)
        pygame.mixer.music.play()
        while pygame.mixer.music.get_busy():
            time.sleep(1)
    except pygame.error as e:
        print("Error while playing the song:", e)

# Fade out the music
def fade_out_music():
    volume = pygame.mixer.music.get_volume()
    while volume > 0:
        pygame.mixer.music.set_volume(volume)
        volume -= 0.1
        time.sleep(0.5)
    pygame.mixer.music.stop()

# Get the tempo from cache or analyze the file
def get_tempo_from_cache_or_analyze(file_path, tempo_cache):
    if file_path in tempo_cache:
        return tempo_cache[file_path]

    try:
        audio, _ = librosa.load(file_path)
        tempo, _ = librosa.beat.beat_track(y=audio)
        tempo_cache[file_path] = tempo
        return tempo
    except Exception as e:
        print("Error analyzing song:", e)
        return None

# Find alternative songs with the minimum play count
def find_alternative_songs():
    with open_database_connection() as connection:
        cursor = connection.cursor()
        
        # Find the minimum play count in the database
        cursor.execute("SELECT MIN(play_count) FROM songs")
        min_play_count = cursor.fetchone()[0]
        
        # Retrieve all songs that have the minimum play count
        cursor.execute("SELECT file_path FROM songs WHERE play_count=?", (min_play_count,))
        return [row[0] for row in cursor.fetchall()]

# Analyze and insert all songs in the directory into the database
def analyze_and_insert_all_songs(directory):
    tempo_cache = {}

    for filename in os.listdir(directory):
        if filename.lower().endswith('.mp3'):
            file_path = os.path.join(directory, filename)
            try:
                if not is_song_in_database(file_path):
                    print("Analyzing song: {}".format(filename))
                    tempo = get_tempo_from_cache_or_analyze(file_path, tempo_cache)
                    if tempo is not None:
                        add_song_to_database(file_path, tempo)
                        print("Song Added: {}".format(file_path))
                else:
                    print("Song already exists in the database: {}".format(file_path))
            except Exception as e:
                print("Error processing song:", e)

# Main function to control the flow of the program
def main():
    directory = os.getcwd()  # Get the current working directory
    pygame.mixer.init()  # Initialize the mixer module
    playback_speed_factor = 1.0  # Set playback speed factor (currently unused)

    # Define BPM ranges for different times of the day
    bpm_ranges = {
        'morning': (60, 90),
        'afternoon': (90, 120),
        'evening': (60, 90),
        'power': (184, 199),
    }

    current_time = datetime.datetime.now()  # Get the current time
    current_bpm_range = bpm_ranges[get_bpm_range(current_time)]  # Get the BPM range based on current time
    create_database()  # Create the database if it doesn't exist

    # Analyze and insert all songs in the directory
    analyze_and_insert_all_songs(directory)

    optimal_songs = []
    total_time = 0

    # Check for songs within the BPM range and add to optimal_songs
    for filename in os.listdir(directory):
        if filename.lower().endswith('.mp3'):
            file_path = os.path.join(directory, filename)
            try:
                if is_song_in_database(file_path):
                    tempo = get_tempo_from_database(file_path)
                    if current_bpm_range[0] <= tempo <= current_bpm_range[1]:
                        optimal_songs.append(file_path)
                        total_time += librosa.get_duration(y=librosa.load(file_path)[0])
                else:
                    print("Song not found in database: {}".format(file_path))
            except Exception as e:
                print("Error processing song:", e)

    # If no optimal songs are found, look for alternatives
    if not optimal_songs:
        print("No songs found within the optimal BPM range. Finding alternatives...")
        alternative_songs = find_alternative_songs()
        if alternative_songs:
            print("Found alternative songs to play.")
            optimal_songs = alternative_songs
        else:
            print("No alternative songs found either.")
            return

    random.shuffle(optimal_songs)  # Shuffle the optimal songs
    display_playlist(optimal_songs)  # Display the playlist

    max_play_count = 1  # Set the maximum play count for songs
    song_played = False  # Flag to check if any song has been played

    try:
        for song_path in optimal_songs:
            try:
                play_count = get_play_count_from_database(song_path)
                if play_count >= max_play_count:
                    print("Replacing: {} (Played {} times)".format(song_path, play_count))
                    continue

                print("Now playing: {} ".format(song_path))
                play_song(song_path)
                update_play_count(song_path)
                song_played = True
            except Exception as e:
                print("Error:", e)

        # If no song was played, find and play alternative songs
        if not song_played:
            print("No song was played from the initial list. Finding alternatives...")
            alternative_songs = find_alternative_songs()
            if alternative_songs:
                print("Found alternative songs to play.")
                random.shuffle(alternative_songs)
                display_playlist(alternative_songs)

                for song_path in alternative_songs:
                    try:
                        print("Now playing: {} ".format(song_path))
                        play_song(song_path)
                        update_play_count(song_path)
                    except Exception as e:
                        print("Error:", e)
            else:
                print("No alternative songs found either.")
                return
    except KeyboardInterrupt:
        fade_out_music()
        print("Playback interrupted by the user.")
    finally:
        pygame.mixer.quit()  # Quit the mixer module

if __name__ == "__main__":
    main()
