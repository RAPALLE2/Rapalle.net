try:
    import subprocess
    from datetime import datetime
    import time
    import logging
    import traceback
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
        break
    except Exception as e:
        print("Error | Could not import all required librarys, installing all required librarys, please dont touch the new opend cmd")
        subprocess.run(['start', 'cmd', '/c', 'pip install colorama'],shell=True)
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
    elif Type.lower() == "warning":
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


if __name__ == "__main__":

    while True:
        try:

            # GitHub repository details
            repo_path = 'https://github.com/RAPALLE2/Rapalle.net'

            # Time interval to check for new commits (in seconds)
            check_interval = 60


            def get_latest_commit_sha():
                try:
                    # Navigate to the repository and get the latest commit SHA
                    result = subprocess.run(['git', 'rev-parse', 'HEAD'], cwd=repo_path, capture_output=True, text=True)
                    if result.returncode == 0:
                        return result.stdout.strip()
                except Exception as e:
                    print(f'An error occurred: {e}')
                return None


            def wait_for_new_commit():
                print('Checking for new commits...')
                last_commit_sha = get_latest_commit_sha()
                if not last_commit_sha:
                    print('No commits found in the repository.')
                    return

                while True:
                    time.sleep(check_interval)
                    current_commit_sha = get_latest_commit_sha()
                    if current_commit_sha != last_commit_sha:
                        print('New commit detected:')
                        print(f'Commit SHA: {current_commit_sha}')
                        break
                    else:
                        print('No new commit yet. Checking again...')


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
