try:
    import subprocess
    from datetime import datetime
    import datetime
    import time
    import logging
    import traceback
    import urllib.request
    import json
    import os
    import platform
    import sys
    import threading
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
        import keyboard  # pip install keyboard
        break
    except Exception as e:
        print("Error | Could not import all required librarys, installing all required librarys, please dont touch the new opend cmd")
        subprocess.run(['start', 'cmd', '/c', 'pip install colorama'],shell=True)
        time.sleep(10)

def Clear():
    if os.name == 'nt':  # For Windows
        subprocess.call('cls', shell=True)
    else:  # For macOS and Linux
        subprocess.call('clear', shell=True)

def Output(Type, Message):
    Now = datetime.datetime.now()
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

def Headder():
    Clear()

    print()
    Output("Info", "      ______  ___  ______  ___   _      _      _____  _   _  _____ _____")
    Output("Info", "      | ___ \\/ _ \\ | ___ \\/ _ \\ | |    | |    |  ___|| \\ | ||  ___|_   _|")
    Output("Info", "      | |_/ / /_\\ \\| |_/ / /_\\ \\| |    | |    | |__  |  \\| || |__   | |")
    Output("Info", "      |    /|  _  ||  __/|  _  || |    | |    |  __| | . ` ||  __|  | |")
    Output("Info", "      | |\\ \\| | | || |   | | | || |____| |____| |____| |\\  || |___  | |")
    Output("Info", "      \\_| \\_\\_| |_/\\_|   \\_| |_/\\_____/\\_____/\\____(_)_| \\_/\\____/  \\_/")
    Output("Info", "      Made by Rapalle      Automatic Server Management Software")
    print()
    print()
    print()
    Output("System", "Running version " + Fore.LIGHTBLACK_EX + Version)
    print()

def Init():
    Headder()

def Startup(Time):
    def ask():
        current = 1
        while True:
            Clear()
            if current == 1:
                Output("Info", "Select Startup option")
                print()
                print(f"({Fore.CYAN}X{Style.RESET_ALL}) Start All")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start All without Cloud")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start Nothing")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start Only Necessary")
            elif current == 2:
                Output("Info", "Select Startup option")
                print()
                print(f"{Fore.LIGHTBLACK_EX}( ) Start All")
                print(f"({Fore.CYAN}X{Style.RESET_ALL}) Start All without Cloud")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start Nothing")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start Only Necessary")
            elif current == 3:
                Output("Info", "Select Startup option")
                print()
                print(f"{Fore.LIGHTBLACK_EX}( ) Start All")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start All without Cloud")
                print(f"({Fore.CYAN}X{Style.RESET_ALL}) Start Nothing")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start Only Necessary")
            elif current == 4:
                Output("Info", "Select Startup option")
                print()
                print(f"{Fore.LIGHTBLACK_EX}( ) Start All")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start All without Cloud")
                print(f"{Fore.LIGHTBLACK_EX}( ) Start Nothing")
                print(f"({Fore.CYAN}X{Style.RESET_ALL}) Start Only Necessary")
            event = keyboard.read_event()
            if event.event_type == keyboard.KEY_DOWN:
                if event.name == 'nach-oben':
                    if current == 1:
                        current = 4
                    else:
                        current -= 1
                elif event.name == 'nach-unten':
                    if current == 4:
                        current = 1
                    else:
                        current += 1
                elif event.name == 'enter':
                    return current
            time.sleep(0.2)
    def read_input():
        sys.stdin.readline()

    input_thread = threading.Thread(target=read_input)
    input_thread.daemon = True
    input_thread.start()

    Output("Info", f"Press Enter within {Time} seconds to select startup options...")

    input_thread.join(timeout=Time)
    if input_thread.is_alive():
        Output("Info", "Starting Server Autonomy Mode")
        current = 2
    else:
        current = ask()
        Clear()
    return(current)

def StartScript(name, content_bat, contend_sh):
    if platform.system() == "Windows":
        FileName = f'{name}.bat'
        if os.path.exists(FileName):
            subprocess.run(['start', 'cmd', '/c', FileName], shell=True)
        else:
            with open(FileName, 'w') as file:
                file.write(content_bat)
                subprocess.run(['start', 'cmd', '/c', FileName], shell=True)
    else:
        FileName = f'{name}.sh'
        if os.path.exists(FileName):
            pass
        else:
            with open(FileName, 'w') as file:
                file.write(contend_sh)


if __name__ == "__main":
    try:
        logger = logging.getLogger(__name__)
        logger.setLevel(logging.INFO)
        formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
        file_handler = logging.FileHandler("error.log")
        file_handler.setFormatter(formatter)
        logger.addHandler(file_handler)

        init(autoreset=True)

        Version = "1.0.0 Alpha Pre-release"

        # Configuration
        repo_owner = 'RAPALLE2'
        repo_name = 'Rapalle.net'
        branch = 'main'  # The branch to check for new commits
        repo_path = 'C:\\Users\\Rapalle\\Desktop\\RAPALLE.NET\\Rapalle.net'  # Path to the local cloned repository
        time.sleep(1)
        # GitHub API URL for the repository commits
        api_url = f'https://api.github.com/repos/{repo_owner}/{repo_name}/commits?sha={branch}'


        current = Startup(10)
        print(current)
        if current == 1:
            pass
        elif current == 2:
            pass
        elif current == 3:
            pass
        elif current == 4:
            pass
        else:
            Clear()
            Output("Error", f"An error occurred with the Startup Routine")
            time.sleep(0.1)
            traceback.print_exc()
            time.sleep(0.1)
            logger.info("An error occurredwith the Startup Routine")
            time.sleep(0.1)
            Output("System", "Continue program with prefered Stratup Settings")
            time.sleep(3)

        while True:
            break

    except Exception as e:
        Clear()
        Output("Error", f"An error occurred: {e}")
        time.sleep(0.1)
        traceback.print_exc()
        time.sleep(0.1)
        logger.info("An error occurred: %s", e)
        time.sleep(0.1)
        Output("System", "Continue program")
        time.sleep(3)