try:
    from datetime import datetime
    import time
    import os
    import platform
    import traceback
    import subprocess
except Exception as e:
    print(
        "Error | could not import all preinstalled librarys, you need to fix this before you can continue, maybe reinstall python")

trys = 5
while True:
    trys -= 1
    if trys == 0:
        print(
            "Error | Could not install or import all required libarys, you need to fix this before you can continue, maybe reinstall python")
        break
    try:
        from colorama import Fore, Style, init  # pip install colorama
        import keyboard  # pip install keyboard
        break
    except Exception as e:
        print(
            "Error | Could not import all required librarys, installing all required librarys, please dont touch the new opend cmd")
        subprocess.run(
            ['start', 'cmd', '/c', 'pip install colorama keyboard'],
            shell=True)
        time.sleep(10)

init(autoreset=True)

Version = "1.0.0 Alpha Pre-release"


def CreateStartScript():
    if platform.system() == "Windows":
        FileName = 'start.bat'
        if os.path.exists(FileName):
            pass
        else:
            with open(FileName, 'w') as file:
                file.write('python Github.py')
    else:
        FileName = 'start.sh'
        if os.path.exists(FileName):
            pass
        else:
            with open(FileName, 'w') as file:
                file.write('python Github.py')


def ask():
    current = 1
    Output("Info", "Select option")
    print()
    print(f"({Fore.CYAN}X{Style.RESET_ALL}) Commit")
    print(f"{Fore.LIGHTBLACK_EX}( ) Fetch")
    print(f"{Fore.LIGHTBLACK_EX}( ) Clone")
    while True:
        event = keyboard.read_event()
        if event.event_type == keyboard.KEY_DOWN:
            if event.name == 'nach-oben':
                if current == 1:
                    current = 3
                else:
                    current -= 1
            elif event.name == 'nach-unten':
                if current == 3:
                    current = 1
                else:
                    current += 1
            elif event.name == 'nach-rechts':
                return current
        Clear()
        Headder()
        if current == 1:
            Output("Info", "Select option")
            print()
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Commit")
            print(f"{Fore.LIGHTBLACK_EX}( ) Fetch")
            print(f"{Fore.LIGHTBLACK_EX}( ) Clone")
        elif current == 2:
            Output("Info", "Select option")
            print()
            print(f"{Fore.LIGHTBLACK_EX}( ) Commit")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Fetch")
            print(f"{Fore.LIGHTBLACK_EX}( ) Clone")
        elif current == 3:
            Output("Info", "Select option")
            print()
            print(f"{Fore.LIGHTBLACK_EX}( ) Commit")
            print(f"{Fore.LIGHTBLACK_EX}( ) Fetch")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Clone")

        time.sleep(0.2)



def Output(Type, Message):
    Now = datetime.now()
    Time = Now.strftime("%H:%M:%S")

    if Type.lower() == "info":
        color = Fore.CYAN
    elif Type.lower() == "error":
        color = Fore.LIGHTRED_EX
    elif Type.lower() == "successfully":
        color = Fore.GREEN
    elif Type.lower() == "system":
        color = Fore.LIGHTBLACK_EX
    else:
        color = Fore.WHITE

    print(f"{Time} | {color}{Type.capitalize()}{Style.RESET_ALL} | {Message}")


def Clear():
    if platform.system() == "Windows":
        os.system('cls')
    else:
        os.system('clear')


def Headder():

    print()
    Output("Info", "      ______  ___  ______  ___   _      _      _____  _   _  _____ _____")
    Output("Info", "      | ___ \\/ _ \\ | ___ \\/ _ \\ | |    | |    |  ___|| \\ | ||  ___|_   _|")
    Output("Info", "      | |_/ / /_\\ \\| |_/ / /_\\ \\| |    | |    | |__  |  \\| || |__   | |")
    Output("Info", "      |    /|  _  ||  __/|  _  || |    | |    |  __| | . ` ||  __|  | |")
    Output("Info", "      | |\\ \\| | | || |   | | | || |____| |____| |____| |\\  || |___  | |")
    Output("Info", "      \\_| \\_\\_| |_/\\_|   \\_| |_/\\_____/\\_____/\\____(_)_| \\_/\\____/  \\_/")
    Output("Info", "      Made by Rapalle                                    Github Manager")
    print()
    Output("System", "Running version " + Fore.LIGHTBLACK_EX + Version)
    print()
    print()
    print()


Clear()
Headder()

if __name__ == "__main__":

    repo = "https://github.com/RAPALLE2/Rapalle.net.git"
    branch = "main"

    while True:
        try:
            selected = ask()
            print()
            if selected == 1:
                Message = input(f"Enter commit message {Fore.LIGHTBLACK_EX}»{Style.RESET_ALL} ")
                print()
                Commit = f'git init && git add --all && git commit -m "{Message}" && git push -u {repo} {branch}'
                subprocess.run(['cmd.exe', '/c', Commit])
                print()
                Output("Successfully", "Successfully commited the changes")


            elif selected == 2:
                Fetch = f'git init && git fetch && git merge {repo} {branch}'
                subprocess.run(['cmd.exe', '/c', Fetch])
                print()
                Output("Successfully", "Successfully fetched the changes")


            elif selected == 3:
                Clone = f'git init && git clone {repo}'
                subprocess.run(['cmd.exe', '/c', Clone])
                print()
                Output("Successfully", "Successfully cloned the repository")
            print()
            time.sleep(10)
            Clear()
            Headder()

        except Exception as e:
            Output("Error", f"An error occurred: {e}")
            time.sleep(0.1)
            traceback.print_exc()
            time.sleep(0.1)
            Output("System", "Continue program")
            time.sleep(3)
            Headder()