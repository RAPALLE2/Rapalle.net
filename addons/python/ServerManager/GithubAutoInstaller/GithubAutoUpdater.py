try:
    import subprocess
    from datetime import datetime
    import time
    import logging
    import traceback
    import urllib.request
    import json
    import os
    import platform
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

def Clear():
    if platform.system() == "Windows":
        os.system('cls')
    else:
        os.system('clear')

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

Clear()

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
repo_path = 'C:\\Users\\Rapalle\\Desktop\\RAPALLE.NET\\Rapalle.net'  # Path to the local cloned repository
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


def stop_cloud():
    pass
    #try:
    #   Output("Info", f'Stopping the Network')
    #   time.sleep(1)
    #   pyautogui.typewrite('s')
    #   time.sleep(1)
    #   pyautogui.typewrite('t')
    #   time.sleep(1)
    #   pyautogui.typewrite('o')
    #   time.sleep(1)
    #   pyautogui.typewrite('p')
    #   time.sleep(1)
    #   pyautogui.press('enter')
    #   time.sleep(30)
    #   Output("Successfully", 'Network stopped.')
    #except Exception as e:
    #   Output("Error", f'An error occurred while stopping the Network: {e}')


def start_all_applications():
    try:
       Output("Info", f'Starting the Network')
       os.chdir(repo_path)
       bat_file_path = os.path.join("C:\\Users\\Rapalle\\Desktop\\RAPALLE.NET\\GithubAutoInstaller", "start_all.bat")
       subprocess.run(['cmd', '/c', bat_file_path], check=True)
       Output("Successfully", "Started Playit")
       Output("Successfully", "Started Http-Web-Server")
       time.sleep(2)
       start_cloud()
       Output("Successfully", 'Network started.')
    except Exception as e:
       Output("Error", f'An error occurred while starting the Network: {e}')

def start_cloud():
    pass
    #try:
    #   Output("Info", f'Starting the Cloud')
    #   os.chdir(repo_path)
    #   bat_file_path = os.path.join("C:\\Users\\Rapalle\\Desktop\\RAPALLE.NET\\GithubAutoInstaller", "start_cloud.bat")
    #   subprocess.run(['cmd', '/c', bat_file_path], check=True)
    #   Output("Successfully", 'Cloud started.')
    #except Exception as e:
    #   Output("Error", f'An error occurred while starting the Cloud: {e}')

def pull_latest_changes():
    try:
        subprocess.run(["cmd", "/c", "start C:\\Users\\Rapalle\\Desktop\\RAPALLE.NET\\GithubAutoInstaller\\fetch.bat"], check=True)
    except Exception as e:
        Output("Error", f'An error occurred while pulling the latest changes: {e}')


def wait_for_new_commit():
    default_check_interval = 600 #600  # 10 minutes in seconds
    intensive_check_interval = 60 #60  # 1 minute in seconds
    intensive_check_duration = 600  # 10 minutes in seconds

    while True:
        Output("System", 'Checking for new commits every 10 minutes...')
        last_commit_sha = get_latest_commit_sha()
        if not last_commit_sha:
            Output("System", 'No commits found in the repository.')
            time.sleep(default_check_interval)
            continue

        # Start the intensive checking if a commit is detected
        while True:
            time.sleep(default_check_interval)
            new_commit_sha = get_latest_commit_sha()
            if new_commit_sha != last_commit_sha:
                Output("Info", 'New commit detected:')
                Output("Commit", f'Commit SHA: {new_commit_sha}')
                stop_cloud()
                pull_latest_changes()
                #time.sleep(60)
                start_cloud()
                last_commit_sha = new_commit_sha

                # Switch to intensive checking
                intensive_end_time = time.time() + intensive_check_duration
                while time.time() < intensive_end_time:
                    time.sleep(intensive_check_interval)
                    new_commit_sha = get_latest_commit_sha()
                    if new_commit_sha != last_commit_sha:
                        Output("Info", 'New commit detected during intensive check:')
                        Output("Commit", f'Commit SHA: {new_commit_sha}')
                        stop_cloud()
                        pull_latest_changes()
                        #time.sleep(60)
                        start_cloud()
                        last_commit_sha = new_commit_sha
                    else:
                        Output("System", 'No new commit yet. Checking again intensively...')

            else:
                Output("System", f'No new commit yet. Checking again in {default_check_interval / 60} minutes...')

if __name__ == "__main__":
    pull_latest_changes()
    #time.sleep(60)
    start_all_applications()
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
