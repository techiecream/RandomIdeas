import os
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
from plyer import notification
#Monitor you Directory for changes
class FileChangeHandler(FileSystemEventHandler):
    def on_modified(self, event):
        """
        Callback function when a file is modified.
        Display a desktop notification if the modified file has a '.txt' extension.
        """
        if not event.is_directory:
            message = f"File '{event.src_path}' has been modified!"
            notification.notify(
                title='File Change Notification',
                message=message,
                app_icon='1.ico',  # You can set a custom icon file path here
                timeout=5  # Notification will automatically close after 5 seconds
            )

def monitor_files(folder_path):
    """
    Monitor files in the specified folder for changes.
    :param folder_path: The path of the folder to monitor.
    """
    event_handler = FileChangeHandler()
    observer = Observer()
    observer.schedule(event_handler, path=folder_path, recursive=True)
    observer.start()
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()

def get_current_folder_path():
    """
    Get the absolute path to the current directory where the script is located.
    :return: The absolute path to the current folder.
    """
    return os.path.dirname(os.path.abspath(__file__))

if __name__ == '__main__':
    try:
        # Get the absolute path to the current directory
        current_folder = get_current_folder_path()
        monitor_files(current_folder)
    except Exception as e:
        print(f"An error occurred: {e}")
