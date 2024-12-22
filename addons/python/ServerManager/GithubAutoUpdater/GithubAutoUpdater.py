try:
    import subprocess
    from datetime import datetime
    import time
    import logging
    import traceback
    import urllib.request
    import json
    import os
except Exception as e:
    print("Error | could not import all preinstalled librarys, you need to fix this before you can continue, maybe reinstall python")
trys = 5
while True:
    trys -= 1
    if trys == 0:
        print("Error | Could not install or import all required libarys, you need to fix this before you can continue, maybe reinstall python")
        break
    try:
        from colorama import Fore, Style, init  # pip install colorama
        import psutil  # pip install psutil
        import pyautogui  # pip install pyautogui
        break
    except Exception as e:
        print("Error | Could not import all required librarys, installing all required librarys, please dont touch the new opend cmd")
        subprocess.run(['start', 'cmd', '/c', 'pip install colorama psutil pyautogui'],shell=True)
        time.sleep(10)

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
file_handler = logging.FileHandler("error.log")
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)

init(autoreset=True)

Version = "1.0.0 Alpha Pre-release"

def Output(Type, Message):
    Now = datetime.now()
    Time = Now.strftime("%H:%M:%S")

    if Type.lower() == "info":
        color = Fore.CYAN
    elif Type.lower() == "error":
        color = Fore.LIGHTRED_EX
    elif Type.lower() == "success":
        color = Fore.GREEN
    elif Type.lower() == "successfully":
        color = Fore.GREEN
    elif Type.lower() == "commit":
        color = Fore.YELLOW
    elif Type.lower() == "system":
        color = Fore.LIGHTBLACK_EX
    else:
        color = Fore.WHITE

    print(f"{Time} | {color}{Type.capitalize()}{Style.RESET_ALL} | {Message}")

print()
Output("Info", "      ______  ___  ______  ___   _      _      _____  _   _  _____ _____")
Output("Info", "      | ___ \\/ _ \\ | ___ \\/ _ \\ | |    | |    |  ___|| \\ | ||  ___|_   _|")
Output("Info", "      | |_/ / /_\\ \\| |_/ / /_\\ \\| |    | |    | |__  |  \\| || |__   | |")
Output("Info", "      |    /|  _  ||  __/|  _  || |    | |    |  __| | . ` ||  __|  | |")
Output("Info", "      | |\\ \\| | | || |   | | | || |____| |____| |____| |\\  || |___  | |")
Output("Info", "      \\_| \\_\\_| |_/\\_|   \\_| |_/\\_____/\\_____/\\____(_)_| \\_/\\____/  \\_/")
Output("Info", "      Made by Rapalle      Automatic Github Reposetory Updating Software")
print()
print()
print()
Output("System", "Running version " + Fore.LIGHTBLACK_EX + Version)
print()

# Configuration
repo_owner = 'RAPALLE2'
repo_name = 'Rapalle.net'
branch = 'main'  # The branch to check for new commits
repo_path = 'L:\\Rapalle.net'  # Path to the local cloned repository
default_check_interval = 600 # Default time interval to check for new commits (in seconds)
intensive_check_interval = 60 # Intensive time interval to check for new commits (in seconds)
intensive_check_duration = 3600 # Duration to check intensively (in seconds)

formatted_check_interval = default_check_interval / 60
time.sleep(1)
# GitHub API URL for the repository commits
api_url = f'https://api.github.com/repos/{repo_owner}/{repo_name}/commits?sha={branch}'


def get_latest_commit_sha():
    try:
        with urllib.request.urlopen(api_url) as response:
            if response.status == 200:
                commits = json.loads(response.read().decode())
                if commits:
                    return commits[0]['sha']
    except Exception as e:
        Output("Error", f'An error occurred while fetching the latest commit: {e}')
    return None


def stop_application():
    try:
       Output("Info", f'Stopping the Network')
       # Simulate Alt+F4 to close windows
       #pyautogui.hotkey('alt', 'f4')
       #time.sleep(1)  # Wait for a second
       # Simulate typing "stop" and pressing Enter
       pyautogui.typewrite('s')
       time.sleep(1)
       pyautogui.typewrite('t')
       time.sleep(1)
       pyautogui.typewrite('o')
       time.sleep(1)
       pyautogui.typewrite('p')
       time.sleep(1)
       pyautogui.press('enter')
       time.sleep(1)  # Wait for a second
       pyautogui.hotkey('alt', 'f4')
       Output("Successfully", 'Network stopped.')
    except Exception as e:
       Output("Error", f'An error occurred while stopping the Network: {e}')


def start_application():
    try:
       Output("Info", f'Starting the Network')
       os.chdir(repo_path)
       bat_file_path = os.path.join(repo_path, "start.bat")
       subprocess.run(['cmd', '/c', bat_file_path], check=True)
       Output("Successfully", 'Network started.')
    except Exception as e:
       Output("Error", f'An error occurred while starting the Network: {e}')

def pull_latest_changes():
    try:
        Output("Info", 'Pulling the latest changes from the repository...')
        result = subprocess.run(['git', 'pull', 'origin', branch], cwd=repo_path, capture_output=True,
                                text=True)
        if result.returncode == 0:
            Output("Successfully", 'Repository successfully pulled.')
        else:
            raise RuntimeError(f"Git pull command failed: {result.stderr}")
    except Exception as e:
        Output("Error", f'An error occurred while pulling the latest changes: {e}')


def wait_for_new_commit():
    Output("System", 'Checking for new commits...')
    last_commit_sha = get_latest_commit_sha()
    if not last_commit_sha:
        Output("System", 'No commits found in the repository.')
        return

    while True:
        time.sleep(default_check_interval)
        new_commit_sha = get_latest_commit_sha()
        if new_commit_sha != last_commit_sha:
            Output("Info", 'New commit detected:')
            Output("Commit", f'Commit SHA: {new_commit_sha}')
            #stop_application()
            pull_latest_changes()
            #start_application()
            last_commit_sha = new_commit_sha

            # Switch to intensive checking
            intensive_end_time = time.time() + intensive_check_duration
            while time.time() < intensive_end_time:
                time.sleep(intensive_check_interval)
                new_commit_sha = get_latest_commit_sha()
                if new_commit_sha != last_commit_sha:
                    Output("Info", 'New commit detected:')
                    Output("Commit", f'Commit SHA: {new_commit_sha}')
                    #stop_application()
                    pull_latest_changes()
                    #start_application()
                    last_commit_sha = new_commit_sha
                else:
                    Output("System", 'No new commit yet. Checking again intensively...')

        else:
            Output("System", f'No new commit yet. Checking again in {formatted_check_interval} minutes...')

if __name__ == "__main__":

    while True:
        try:
            wait_for_new_commit()
        except Exception as e:
            Output("Error", f"An error occurred: {e}")
            time.sleep(0.1)
            traceback.print_exc()
            time.sleep(0.1)
            logger.info("An error occurred: %s", e)
            time.sleep(0.1)
            Output("System", "Continue program")
            time.sleep(3)
