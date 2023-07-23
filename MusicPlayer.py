import os
import librosa
import pygame.mixer
import datetime
import random

# Directory containing the MP3 files
directory = os.getcwd()

# Initialize Pygame mixer
pygame.mixer.init()

# Set the desired playback speed factor
playback_speed_factor = 1.0

# Define BPM ranges for different times of day
bpm_ranges = {
    'morning': (60, 90),  # Slow music for morning
    'afternoon': (90, 120),  # Upbeat music for afternoon
    'evening': (60, 90),  # Relaxing music for evening
}

# Get the current time of day
current_time = datetime.datetime.now()
current_hour = current_time.hour

# Determine the time range based on the current hour
if 6 <= current_hour < 12:
    time_range = 'morning'
elif 12 <= current_hour < 18:
    time_range = 'afternoon'
else:
    time_range = 'evening'

# List to store the songs within the BPM range for the current time of day
optimal_songs = []

# Total time in seconds
total_time = 0
print("Started at: {}".format(current_time))
# Iterate through all the files in the directory to get the BPM
for filename in os.listdir(directory):
    if filename.endswith('.mp3'):
        file_path = os.path.join(directory, filename)
        # Print the song being analyzed
        print("Analyzing song: {}".format(filename))

        # Load the audio file and get the tempo
        audio, _ = librosa.load(file_path)
        tempo, _ = librosa.beat.beat_track(y=audio)

        # Check if the current song is within the BPM range for the current time of day
        if bpm_ranges[time_range][0] <= tempo <= bpm_ranges[time_range][1]:
            optimal_songs.append(file_path)
            # Calculate the duration of the song
            duration = librosa.get_duration(y=audio)
            total_time += duration

# Shuffle the optimal songs
random.shuffle(optimal_songs)

# Display the songs to be played and their BPM values
for song_path in optimal_songs:
    filename = os.path.basename(song_path)
    print("Now playing: {}, Tempo: {} BPM".format(filename, tempo))

# Display the total time in minutes
print("Total Time: {:.2f} minutes".format(total_time / 60))
print("Stopped at: {}".format(current_time))
# Play the shuffled optimal songs
for song_path in optimal_songs:
    # Load the MP3 file into Pygame mixer and play it
    pygame.mixer.music.load(song_path)
    pygame.mixer.music.play()

    # Wait for the song to finish playing
    while pygame.mixer.music.get_busy():
        pass

# Quit Pygame mixer
pygame.mixer.quit()
