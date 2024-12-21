try:
    from datetime import datetime
    import time
    import os
    import platform
    import urllib.request
    import sys
    import ctypes
    import re
    import random
    import string
    import socket
    import http.client
    import logging
    import traceback
    import subprocess
    import json
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
        import pyperclip  # pip install pyperclip
        #import mysql.connector  # pip install mysql-connector-python
        #import keyboard  # pip install keyboard
        from dotenv import load_dotenv  # pip install python-dotenv
        #from mysql.connector import Error
        #from mysql.connector import errorcode

        break
    except Exception as e:
        import subprocess
        import time

        print(
            "Error | Could not import all required librarys, installing all required librarys, please dont touch the new opend cmd")
        subprocess.run(
            ['start', 'cmd', '/c', 'pip install colorama pyperclip python-dotenv'], # + --> " mysql-connector-python keyboard"
            shell=True)
        time.sleep(10)

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
file_handler = logging.FileHandler("error.log")
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)

init(autoreset=True)


def CreateStartScript():
    if platform.system() == "Windows":
        FileName = 'start.bat'
        if os.path.exists(FileName):
            pass
        else:
            with open(FileName, 'w') as file:
                file.write('python start.py')
    else:
        FileName = 'start.sh'
        if os.path.exists(FileName):
            pass
        else:
            with open(FileName, 'w') as file:
                file.write('python start.py')


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
    elif Type.lower() == "last":
        color = Fore.LIGHTBLACK_EX
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
    load_dotenv()

    print()
    Output("Info", "      ______  ___  ______  ___   _      _      _____  _   _  _____ _____")
    Output("Info", "      | ___ \\/ _ \\ | ___ \\/ _ \\ | |    | |    |  ___|| \\ | ||  ___|_   _|")
    Output("Info", "      | |_/ / /_\\ \\| |_/ / /_\\ \\| |    | |    | |__  |  \\| || |__   | |")
    Output("Info", "      |    /|  _  ||  __/|  _  || |    | |    |  __| | . ` ||  __|  | |")
    Output("Info", "      | |\\ \\| | | || |   | | | || |____| |____| |____| |\\  || |___  | |")
    Output("Info", "      \\_| \\_\\_| |_/\\_|   \\_| |_/\\_____/\\_____/\\____(_)_| \\_/\\____/  \\_/")
    Output("Info", "      Made by Rapalle      Automatic MySQL Database Management Software")
    print()
    print()
    print()
    Output("System", "Running version " + Fore.LIGHTBLACK_EX + os.getenv("Version"))
    print()


def ExecuteAdmin(command):
    def IsAdmin():
        try:
            return ctypes.windll.shell32.IsUserAnAdmin()
        except:
            return False

    if IsAdmin():
        try:
            subprocess.run(command, check=True, shell=True)
        except subprocess.CalledProcessError as e:
            Output("Error", f"Command failed: {e}")
    else:
        Output("Error", "Script is not runnyng by a user with admin rights. some commands may not work")
        ctypes.windll.shell32.ShellExecuteW(None, "runas", sys.executable, " ".join(sys.argv), None, 1)


def LoadConfics():
    Names = ["lobby", "proxy"]
    return Names


def WorkbenchOpen():
    try:
        subprocess.Popen(r'C:\Program Files\MySQL\MySQL Workbench 8.0\MySQLWorkbench.exe')
    except FileNotFoundError:
        print("Error", f"Error opening program")
    except Exception as e:
        Output("Error", f"Error opening program: {e}")


def InstallJv():
    Url = "https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.msi"
    OriginalName = "jdk-21_windows-x64_bin.msi"
    NewName = "jdk-21.msi"

    def check_java_version():
        try:
            result = subprocess.run(['java', '-version'], stderr=subprocess.PIPE, text=True)
            output = result.stderr

            if 'java version "21' in output:
                Output("Info", "Java 21 JRE is already installed.")
            else:
                # Output("Info", "Java 21 JRE is not installed.")
                return False
        except FileNotFoundError:
            # Output(" Info", "Java is not installed.")
            return False

    Java = check_java_version()
    if Java == "False":
        try:
            if os.path.exists(NewName):
                pass
            elif os.path.exists(OriginalName):
                os.rename(OriginalName, NewName)
                pass
            else:
                Output("System", "Starting download, this may take a while")
                urllib.request.urlretrieve(Url, OriginalName)
                os.rename(OriginalName, NewName)

            Clear()

            subprocess.run(["msiexec", "/i", NewName], check=True)
            os.remove(NewName)
            Clear()
            Headder()
        except subprocess.CalledProcessError as e:
            os.remove(NewName)
            Output("Error", f"Execution failed: {e}")
        except Exception as e:
            os.remove(NewName)
            Output("Error", f"Unexpected error: {e}")


def InstallDb():
    Url = "https://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-web-community-8.0.40.0.msi"
    OriginalName = "mysql-installer-web-community-8.0.40.0.msi"
    NewName = "mysql-installer.msi"

    try:
        if os.path.exists(NewName):
            pass
        elif os.path.exists(OriginalName):
            os.rename(OriginalName, NewName)
            pass
        else:
            Output("Info", "Starting download, this may take a while")
            urllib.request.urlretrieve(Url, OriginalName)
            os.rename(OriginalName, NewName)

        Clear()
        Output("Info", "Follow this step by step instruction to install mysql database right")

        def Tutorial():
            print()
            Output("Info",
                   "if now you dont see four options: [server], [client], [full], [custom], you have mysql already installed and you decide if you reinstall and follow the tutorial to minimize possible errors or leave it like it is")
            Output("Info", "1. Choose [Custom] installation.")
            Output("Info",
                   "2. Navigate to MySQL Servers -> MySQL Server -> MySQL Server 8.0 -> MySQL Server 8.0.40 - X64 (or the first option) and click it.")
            Output("Info", "3. Click the now green arrow to the right between the two selection areas.")
            Output("Info",
                   "4. Navigate to Applications -> MySQL Workbench -> MySQL Workbench 8.0 -> MySQL Workbench 8.0.40 - X64 (or the first option) and click it.")
            Output("Info", "5. Click the now green arrow to the right between the two selection areas again.")
            Output("Info", "6. Click [Next].")
            Output("Info", "7. Click [Next] again.")
            Output("Info", "8. Click [Execute] and wait for the download to complete; this may take some time.")
            Output("Info", "9. Click [Next] after the download.")
            Output("Info", "10. Click [Execute] and wait for the installation to complete; this may take some time.")
            Output("Info", "11. Click [Next] after the installation.")
            Output("Info", "12. Click [Next] again.")
            Output("Info",
                   "13. Select [Development Computer] as the config type if not already selected, and leave the rest untouched if you are not sure about the settings.")
            Output("Info", "14. Click [Next] again.")
            Output("Info", "15. Choose [Use Strong Password Encryption] if not already selected.")
            Output("Info", "16. Click [Next] again.")
            Output("Info",
                   "17. If you have never installed any MySQL service before, choose a Root Password and remember it! There is nearly no way to reset it. Otherwise, enter your current root password and click Check.")
            Output("Info", "18. Click [Next] again.")
            Output("Info",
                   "19. If you want to change something, do it now, but it's not necessary. After that, click [Next] again.")
            Output("Info", "20. Click [Execute] and wait for the configurations to get updated.")
            Output("Info", "21. After clicking [Finish], you can return here.")
            Output("Successfully", "You have successfully installed MySQL Server!")
            print()

        Tutorial()
        subprocess.run(["msiexec", "/i", NewName], check=True)
        time.sleep(1)
        input("Press Enter to go back if you are finished ")
        os.remove(NewName)
        Clear()
        Headder()
    except subprocess.CalledProcessError as e:
        os.remove(NewName)
        Output("Error", f"Execution failed: {e}")
    except Exception as e:
        os.remove(NewName)
        Output("Error", f"Unexpected error: {e}")


def CreateDatabaseQuestions():
    IpPattern = re.compile(r"^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$")

    def is_valid_ip(ip):
        if IpPattern.match(ip):
            return all(0 <= int(octet) <= 255 for octet in ip.split('.'))
        return False

    def is_valid_port(port):
        return port.isdigit() and 1 <= int(port) <= 65535

    def GetIp():
        conn = http.client.HTTPSConnection("httpbin.org")
        conn.request("GET", "/ip")
        response = conn.getresponse()
        if response.status == 200:
            data = response.read().decode("utf-8")
            ip_info = json.loads(data)
            return ip_info['origin']
        else:
            Output("Error", f"Failed to get public IP address: {response.status} {response.reason}")
            return None

    Clear()

    while True:
        Names = LoadConfics()
        Name = input("Enter Database Name: ")
        if Name == "":
            Clear()
            Output("Error", "You need to Enter a Name")
        elif Name in Names:
            Clear()
            Output("Error", "The entered Name is not available anymore, choose another")
        else:
            Clear()
            break

    while True:
        user = input("Enter user, leave blank for root: ")
        if user == "":
            User = "root"
            Clear()
            break
        else:
            User = user
            Clear()
            break

    while True:
        password = input("Enter password, leave blank for Random: ")
        if password == "":
            Clear()
            Password = ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(40))
            Output("Warning",
                   f"The generated Password is {Fore.LIGHTBLACK_EX}{Password}{Style.RESET_ALL}, copy and paste it to the config of the client")
            Output("System", "Password copyed to clipboard")
            pyperclip.copy(Password)
            input("Press Enter if you copied it ")
            Clear()
            break
        else:
            Password = password
            Clear()
            break

    while True:
        host = input("Enter Host/IP, leave blank for 127.0.0.1 and 'me' for your own IP: ")
        if host == "":
            Host = "127.0.0.1"
            Clear()
            break
        elif host == "localhost":
            Host = "127.0.0.1"
            Clear()
            break
        elif host == "me":
            MyIp = GetIp()
            if MyIp:
                Clear()
                Host = host
                Output("Warning",
                       f"Your IP address is {Fore.LIGHTBLACK_EX}{Host}{Style.RESET_ALL}, copy and paste it to the config of the client")
                Output("System", "Ip copyed to clipboard")
                pyperclip.copy(Host)
                input("Press Enter if you copied it ")
                Clear()
                break
            else:
                Output("Error", "Could not find your IP address, check your internet connection")
        else:
            if is_valid_ip(host):
                Host = host
                Clear()
                break
            else:
                Clear()
                Output("Error", "The entered IP is not valid, choose another")

    while True:
        port = input("Enter port, leave blank for Random: ")
        if port == "":
            Clear()
            Port = ''.join(random.choice(string.digits) for _ in range(4))
            Output("Warning",
                   f"The generated Port is {Fore.LIGHTBLACK_EX}{Port}{Style.RESET_ALL}, copy and paste it to the config of the client")
            Output("System", "Port copyed to clipboard")
            pyperclip.copy(Port)
            input("Press Enter if you copied it ")
            Clear()
            break
        else:
            if is_valid_port(port):
                with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                    IsUsedPort = s.connect_ex(('localhost', port))
                    if IsUsedPort == 0:
                        Clear()
                        Output("Error", "The entered Port is already used, choose another")
                    else:
                        Port = port
                        Clear()
                        break
            else:
                Clear()
                Output("Error", "The entered Port is not valid, choose another")
            break

    Database = [Name, Host, User, Password, Port]
    Output("System", f"Created Database: {Database}")


def Execute(Command):
    Info = ["info", "i", "infoscreen"]
    Cls = ["clear", "cls", "clearscreen", "empty", "space"]
    Database = ["database", "db", "base", "data", "dbase", "datab", "mysql", "sql"]
    Install = ["download", "install", "inst"]
    Create = ["create", "add", "crea"]
    Import = ["import", "in", "im", "impo"]
    Export = ["export", "ex", "expo", "out"]
    List = ["list", "ls", "l"]
    Workbench = ["workbench", "wb", "workb", "wbench", "work", "bench"]
    Java = ["java", "jre", "jav", "jv"]

    if Command in Cls:
        Clear()
    elif Command in Info:
        Clear()
        Headder()
    else:
        Clear()
        Headder()
        Output("Last", "Entered " + Command)

        parts = Command.lower().split()

        if len(parts) >= 2:
            category = parts[0]
            action = parts[1]
            if category in Java:
                if action in Install:
                    InstallJv()
                elif action in Info:
                    pass
            elif category in Database:
                if action in Create:
                    CreateDatabaseQuestions()
                elif action in Install:
                    InstallDb()
                elif action in Workbench:
                    WorkbenchOpen()
                elif action in List:
                    pass
                elif action in Import:
                    pass
                elif action in Export:
                    pass
                elif action in Info:
                    pass
                else:
                    Output("Error", f"Invalid action in category {category}.")
            else:
                Output("Error", "Invalid category.")
        else:
            Output("Error", "Please enter a command in the format: <category> <action> <service> if service needed")


def ExecuteAtStart():
    CreateStartScript()
    Clear()
    Headder()


ExecuteAtStart()

if __name__ == "__main__":
    Stop = ["stop", "exit", "shutdown", "close", "s", "down", "close", "shut", "e"]
    while True:
        try:
            Command = input(f"Enter Command {Fore.LIGHTBLACK_EX}»{Style.RESET_ALL} ")
            if Command in Stop:
                Clear()
                time.sleep(0.1)
                break
            elif Command == "":
                time.sleep(0.1)
            else:
                Execute(Command)
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