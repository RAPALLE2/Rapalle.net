try:
    from datetime import datetime
    import time
    import os
    import platform
    import urllib.request
    import traceback
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
        import subprocess
        import time

        print(
            "Error | Could not import all required librarys, installing all required librarys, please dont touch the new opend cmd")
        subprocess.run(
            ['start', 'cmd', '/c', 'pip install colorama keyboard'],
            shell=True)
        time.sleep(10)

init(autoreset=True)

Version = "1.0.0 Alpha Pre-release"

def ask():
    current = 1
    Output("Info", "Select file to download")
    print()
    print(f"({Fore.CYAN}X{Style.RESET_ALL}) Java")
    print(f"{Fore.LIGHTBLACK_EX}( ) Mysql")
    print(f"{Fore.LIGHTBLACK_EX}( ) Web Server")
    print(f"{Fore.LIGHTBLACK_EX}( ) Python")
    while True:
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
        Clear()
        Headder()
        if current == 1:
            Output("Info", "Select file to download")
            print()
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Java")
            print(f"{Fore.LIGHTBLACK_EX}( ) Mysql")
            print(f"{Fore.LIGHTBLACK_EX}( ) Web Server")
            print(f"{Fore.LIGHTBLACK_EX}( ) Python")
        elif current == 2:
            Output("Info", "Select file to download")
            print()
            print(f"{Fore.LIGHTBLACK_EX}( ) Java")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Mysql")
            print(f"{Fore.LIGHTBLACK_EX}( ) Web Server")
            print(f"{Fore.LIGHTBLACK_EX}( ) Python")
        elif current == 3:
            Output("Info", "Select file to download")
            print()
            print(f"{Fore.LIGHTBLACK_EX}( ) Java")
            print(f"{Fore.LIGHTBLACK_EX}( ) Mysql")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Web Server")
            print(f"{Fore.LIGHTBLACK_EX}( ) Python")
        elif current == 4:
            Output("Info", "Select file to download")
            print()
            print(f"{Fore.LIGHTBLACK_EX}( ) Java")
            print(f"{Fore.LIGHTBLACK_EX}( ) Mysql")
            print(f"{Fore.LIGHTBLACK_EX}( ) Web Server")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Python")

        time.sleep(0.2)



def Output(Type, Message):
    Now = datetime.datetime.now()
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
    Output("Info", "      Made by Rapalle      Automatic Software Install And Download Manager")
    print()
    Output("System", "Running version " + Fore.LIGHTBLACK_EX + Version)
    print()
    print()
    print()

def Java():
    Output("Info", "Starting download, this may take a while")
    urllib.request.urlretrieve("https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.msi", "jdk-21_windows-x64_bin.msi")
    os.rename("jdk-21_windows-x64_bin.msi", "jdk-21.msi")
    Output("Successfully", "Successfully downloaded")

def Mysql():
    Output("Info", "Starting download, this may take a while")
    urllib.request.urlretrieve("https://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-web-community-8.0.40.0.msi", "mysql-installer-web-community-8.0.40.0.msi")
    os.rename("mysql-installer-web-community-8.0.40.0.msi", "mysql-installer.msi")
    Output("Successfully", "Successfully downloaded")

def HttpServer():
    Output("Info", "Starting download, this may take a while")
    urllib.request.urlretrieve(
        "https://github.com/terreng/simple-web-server/releases/download/v1.2.12/Simple-Web-Server-Installer-1.2.12-x64.exe",
        "Simple-Web-Server-Installer-1.2.12-x64.exe")
    os.rename("Simple-Web-Server-Installer-1.2.12-x64.exe", "Simple-Web-Server-Installer.exe")
    Output("Successfully", "Successfully downloaded")
    Output("Info", "you need to install it in a other directory and put the Simple-Web-Server.exe under html/http-server to ensure that the Network starts properly")

def Python():
    Output("Info", "Starting download, this may take a while")
    urllib.request.urlretrieve("https://www.python.org/ftp/python/3.13.1/python-3.13.1-amd64.exe", "python-3.13.1-amd64.exe")
    os.rename("python-3.13.1-amd64.exe", "python-installer.exe")
    Output("Successfully", "Successfully downloaded")


Clear()
Headder()

if __name__ == "__main__":
    while True:
        try:
            selected = ask()
            Clear()
            if selected == 1:
                Java()
            elif selected == 2:
                Mysql()
            elif selected == 3:
                HttpServer()
            elif selected == 4:
                Python()
            else:
                Output("Error", "Something went wrong, try again")
                time.sleep(5)
        except Exception as e:
            Output("Error", f"An error occurred: {e}")
            time.sleep(0.1)
            traceback.print_exc()
            time.sleep(0.1)
            Output("System", "Continue program")
            time.sleep(3)
            Headder()