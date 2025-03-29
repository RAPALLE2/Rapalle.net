try:
    import os
    import subprocess
    import logging
    import time
    import datetime
    import traceback
    import urllib.request
    import json
    import socket
    import platform
    import sys
except Exception as e: print("Error | Could not import all preinstalled libraries. Please fix this before you can continue, maybe by reinstalling Python.")
try:
    from colorama import Fore, Style, init # pip install colorama # type: ignore
    init(autoreset=True)
except Exception as e:
    print("Error | Could not install or import all required libraries. Please fix this before you can continue.")
    print("Info | For everything to work properly, run the following command: >> pip install colorama fabric keyboard holidays")
    time.sleep(10)

def header():
    clear()
    output("info", "      ______  ___  ______  ___   _      _      _____  _   _  _____ _____")
    output("info", "      | ___ \\/ _ \\ | ___ \\/ _ \\ | |    | |    |  ___|| \\ | ||  ___|_   _|")
    output("info", "      | |_/ / /_\\ \\| |_/ / /_\\ \\| |    | |    | |__  |  \\| || |__   | |")
    output("info", "      |    /|  _  ||  __/|  _  || |    | |    |  __| | . ` ||  __|  | |")
    output("info", "      | |\\ \\| | | || |   | | | || |____| |____| |____| |\\  || |___  | |")
    output("info", "      \\_| \\_\\_| |_/\\_|   \\_| |_/\\_____/\\_____/\\____(_)_| \\_/\\____/  \\_/")
    output("info", "      Made by Rapalle            Automatic Server Management Software")
    print()
    output("system", "Running version " + Fore.LIGHTBLACK_EX + version)
    print()

def os_type():
    os_type_value = platform.system()
    if os_type_value == "Windows": os_type_value = "w"
    elif os_type_value == "Linux": os_type_value = "l"
    else: return
    return os_type_value

def get_local_ip():
    local_ip = socket.gethostbyname(socket.gethostname())
    output("system", "Your local IP address is: " + Fore.LIGHTBLACK_EX + local_ip)
    print()
    return local_ip

def clear():
    os_type_value = platform.system()
    if os_type_value == 'Windows':
        subprocess.call('cls', shell=True)
    elif os_type_value == 'Linux':
        subprocess.call('clear', shell=True)

def output(msg_type, message):
    try:
        now = datetime.datetime.now()
        time_str = now.strftime("%H:%M:%S")
        if msg_type.lower() == "info": color = Fore.CYAN
        elif msg_type.lower() == "error": color = Fore.LIGHTRED_EX
        elif msg_type.lower() == "success": color = Fore.GREEN
        elif msg_type.lower() == "thanks": color = Fore.GREEN
        elif msg_type.lower() == "commit": color = Fore.YELLOW
        elif msg_type.lower() == "warning": color = Fore.YELLOW
        elif msg_type.lower() == "system": color = Fore.LIGHTBLACK_EX
        elif msg_type.lower() == "last": color = Fore.LIGHTBLACK_EX
        else: color = Fore.WHITE
        print(f"{time_str} | {color}{msg_type.capitalize()}{Style.RESET_ALL} | {message}")
    except Exception as e:
        print(message)

def ping_ip(ip):
    if os_type() == 'w':
        command = ["ping", "-n", "1", ip]
    elif os_type() == 'l':
        command = ["ping", "-c", "1", ip]
    result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, encoding='latin-1')
    return result.returncode == 0

def execute_via_ssh(host, command):
    from fabric import Connection # pip install fabric # type: ignore
    output("system", f"Executing command: {command}")
    if ping_ip(host):
        output("success", f"{host} is awake")
        result = Connection(host[0], host[1], connect_kwargs={"password": host[2]}).run(command, hide=True)
        output("system", f"Output: {result.stdout.strip()}")
        if result.stderr: output("error", f"{result.stderr.strip()}")
    else: output("error", f"{host} is sleeping")

def execute_via_tempscript(command):
    import tempfile
    if os_type() == "w":
        with tempfile.NamedTemporaryFile(delete=False, suffix='.bat') as batch_file:
            batch_file.write(command.encode('utf-8'))
            batch_file_path = batch_file.name
        try: subprocess.run(batch_file_path, check=True)
        finally: os.remove(batch_file_path)
    elif os_type() == "l":
        import stat
        command = '#!/bin/sh\n' + command
        with tempfile.NamedTemporaryFile(delete=False, suffix='.sh') as sh_file:
            sh_file.write(command.encode('utf-8'))
            sh_file_path = sh_file.name
            os.chmod(sh_file_path, stat.S_IRUSR | stat.S_IWUSR | stat.S_IXUSR | 
                     stat.S_IRGRP | stat.S_IWGRP | stat.S_IXGRP | 
                     stat.S_IROTH | stat.S_IWOTH | stat.S_IXOTH)
        try: subprocess.run(['sh', sh_file_path], check=True)
        finally: os.remove(sh_file_path)

def wake_on_lan(host, command):
    if ping_ip(host[0]):
        output("success", f"{host[0]} is awake")
        return "online"
    else:
        output("system", f"{host[0]} is sleeping")
        if os_type() == 'w':
            return None
        elif os_type() == 'l':
            subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, encoding='latin-1')
            output("success", f"The PC with the MAC address: {host[4]} woke up")
            return "offline"

def raspi_boot(host, command = "echo Hello, World!"): execute_via_ssh(host, command)

def check_commit(information, only_one = False):
    import holidays # pip install holidays # type: ignore
    def get_latest_commit(api_url):
        try:
            with urllib.request.urlopen(api_url) as response:
                if response.status == 200:
                    commits = json.loads(response.read().decode())
                    if commits:
                        latest_commit = commits[0]
                        return latest_commit['sha'], latest_commit['commit']['committer']['date']
        except Exception as e: print(f'An error occurred while fetching the latest commit: {e}')
        return None, None
    slow_time = 60
    normal_time = 10
    month_old_commit_time = 60 * 6
    intense_time = 1
    intense_count = 10
    is_intense = False
    is_first_time = 2
    is_fetched = False
    intense_counting = intense_count
    last_commit_sha = ""
    output("info", "Checking for new commit...")
    while True:
        get_latest_commit_sha, latest_commit_date = get_latest_commit(information[1][3])
        if not is_intense or only_one:
            current_date = datetime.datetime.now()
            current_hour = current_date.hour
            current_weekday = current_date.weekday()
            bavaria_holidays = holidays.Germany(prov='BY')
            is_holiday = current_date.date() in bavaria_holidays
            if latest_commit_date and get_latest_commit_sha:
                commit_date = datetime.datetime.strptime(latest_commit_date, '%Y-%m-%dT%H:%M:%SZ')
                days_since_last_commit = (current_date - commit_date).days
            else:
                output("error", "Could not retrieve the latest commit information.")
                days_since_last_commit = 0
            if last_commit_sha == get_latest_commit_sha and is_first_time == 0 and is_fetched: is_intense = True
            elif (days_since_last_commit > 7): check_interval = month_old_commit_time
            elif ((((1 <= current_hour < 6) or (8 <= current_hour < 13 and current_weekday < 5)) and not is_holiday) or (is_holiday and 3 <= current_hour < 6)): check_interval = slow_time
            else: check_interval = normal_time
            if is_first_time == 2: is_first_time = 1
            elif is_first_time == 1: is_first_time = 0
        if not last_commit_sha == get_latest_commit_sha:
            last_commit_sha = get_latest_commit_sha
            try:
                execute_via_ssh(information[0][1], f"cd {information[0][1][3]} && git fetch && git merge origin/{information[1][2]}")
                execute_via_tempscript(f"cd /d {information[0][0][3]} && git fetch && git merge origin/{information[1][2]}") 
            except Exception as e: output("warning", f"Up to date or fatal error: {e}")
            output("commit", "New commit, fetching...")
            is_fetched = True
            if is_intense: intense_counting = intense_count
        else:
            output("commit", "No new commit")
            is_fetched = False
        if is_intense:
            intense_counting -= 1
            check_interval = intense_time
            if intense_counting == 0: is_intense = False
        if only_one: break
        else:
            output("info", f"Checking again in {check_interval} minutes")
            time.sleep(check_interval * 60)

def execute(command, host):
    def ask(host):
        import keyboard # pip install keyboard # type: ignore
        last = 1
        
        def select_category(current):
            while True:
                clear()
                header()
                output("info", "Select Category")
                print()
                if current == 1:
                    print(f"1 ({Fore.CYAN}X{Style.RESET_ALL}) Raspberry Pi")
                    print(f"2 {Fore.LIGHTBLACK_EX}( ) Server PC")
                    print(f"3 {Fore.LIGHTBLACK_EX}( ) Programs")
                    print(f"4 {Fore.LIGHTBLACK_EX}( ) Websites")
                elif current == 2:
                    print(f"1 {Fore.LIGHTBLACK_EX}( ) Raspberry Pi")
                    print(f"2 ({Fore.CYAN}X{Style.RESET_ALL}) Server PC")
                    print(f"3 {Fore.LIGHTBLACK_EX}( ) Programs")
                    print(f"4 {Fore.LIGHTBLACK_EX}( ) Websites")
                elif current == 3:
                    print(f"1 {Fore.LIGHTBLACK_EX}( ) Raspberry Pi")
                    print(f"2 {Fore.LIGHTBLACK_EX}( ) Server PC")
                    print(f"3 ({Fore.CYAN}X{Style.RESET_ALL}) Programs")
                    print(f"4 {Fore.LIGHTBLACK_EX}( ) Websites")
                elif current == 4:
                    print(f"1 {Fore.LIGHTBLACK_EX}( ) Raspberry Pi")
                    print(f"2 {Fore.LIGHTBLACK_EX}( ) Server PC")
                    print(f"3 {Fore.LIGHTBLACK_EX}( ) Programs")
                    print(f"4 ({Fore.CYAN}X{Style.RESET_ALL}) Websites")
                
                event = keyboard.read_event()
                if event.event_type == keyboard.KEY_DOWN:
                    if event.name == 'nach-oben':
                        if current == 1: current = 6
                        else: current -= 1
                    elif event.name == 'nach-unten':
                        if current == 6: current = 1
                        else: current += 1
                    elif event.name == 'enter' or event.name == 'nach-rechts': return current
                    elif event.name == "0" or event.name == 'esc' or event.name == "backspace" or event.name == 'nach-links': return 0
                    elif event.name == "1": return 1
                    elif event.name == "2": return 2
                    elif event.name == "3": return 3
                    elif event.name == "4": return 4
        
        def select_raspi():
            current = 1
            while True:
                clear()
                header()
                output("info", "Select Session in Category Raspberry Pi")
                print()
                print(" Raspberry Pi")
                print("  |")
                if current == 1:
                    print(f"  |-> 1 ({Fore.CYAN}X{Style.RESET_ALL}) Raspi-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Raspi-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Raspi-SFTP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Raspi-File-Explorer")
                elif current == 2:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Raspi-SSH")
                    print(f"  |-> 2 ({Fore.CYAN}X{Style.RESET_ALL}) Raspi-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Raspi-SFTP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Raspi-File-Explorer")
                elif current == 3:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Raspi-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Raspi-VNC")
                    print(f"  |-> 3 ({Fore.CYAN}X{Style.RESET_ALL}) Raspi-SFTP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Raspi-File-Explorer")
                elif current == 4:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Raspi-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Raspi-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Raspi-SFTP")
                    print(f"  |-> 4 ({Fore.CYAN}X{Style.RESET_ALL}) Raspi-File-Explorer")
                
                event = keyboard.read_event()
                if event.event_type == keyboard.KEY_DOWN:
                    if event.name == 'nach-oben':
                        if current == 1: current = 6
                        else: current -= 1
                    elif event.name == 'nach-unten':
                        if current == 6: current = 1
                        else: current += 1
                    elif event.name == 'enter' or event.name == 'nach-rechts': return current
                    elif event.name == "0" or event.name == 'esc' or event.name == "backspace" or event.name == 'nach-links': return 0
                    elif event.name == "1": return 1
                    elif event.name == "2": return 2
                    elif event.name == "3": return 3
                    elif event.name == "4": return 4
        
        def select_server_pc():
            current = 1
            while True:
                clear()
                header()
                output("info", "Select Session in Category Server PC")
                print()
                print(" Server PC")
                print("  |")
                if current == 1:
                    print(f"  |-> 1 ({Fore.CYAN}X{Style.RESET_ALL}) Server-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Server-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Server-RDP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Server-SFTP")
                    print(f"  |-> 5 {Fore.LIGHTBLACK_EX}( ) Server-File-Explorer")
                    print(f"  |-> 6 {Fore.LIGHTBLACK_EX}( ) WakeMeOnLan")
                elif current == 2:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Server-SSH")
                    print(f"  |-> 2 ({Fore.CYAN}X{Style.RESET_ALL}) Server-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Server-RDP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Server-SFTP")
                    print(f"  |-> 5 {Fore.LIGHTBLACK_EX}( ) Server-File-Explorer")
                    print(f"  |-> 6 {Fore.LIGHTBLACK_EX}( ) WakeMeOnLan")
                elif current == 3:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Server-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Server-VNC")
                    print(f"  |-> 3 ({Fore.CYAN}X{Style.RESET_ALL}) Server-RDP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Server-SFTP")
                    print(f"  |-> 5 {Fore.LIGHTBLACK_EX}( ) Server-File-Explorer")
                    print(f"  |-> 6 {Fore.LIGHTBLACK_EX}( ) WakeMeOnLan")
                elif current == 4:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Server-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Server-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Server-RDP")
                    print(f"  |-> 4 ({Fore.CYAN}X{Style.RESET_ALL}) Server-SFTP")
                    print(f"  |-> 5 {Fore.LIGHTBLACK_EX}( ) Server-File-Explorer")
                    print(f"  |-> 6 {Fore.LIGHTBLACK_EX}( ) WakeMeOnLan")
                elif current == 5:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Server-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Server-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Server-RDP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Server-SFTP")
                    print(f"  |-> 5 ({Fore.CYAN}X{Style.RESET_ALL}) Server-File-Explorer")
                    print(f"  |-> 6 {Fore.LIGHTBLACK_EX}( ) WakeMeOnLan")
                elif current == 6:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) Server-SSH")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Server-VNC")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Server-RDP")
                    print(f"  |-> 4 {Fore.LIGHTBLACK_EX}( ) Server-SFTP")
                    print(f"  |-> 5 {Fore.LIGHTBLACK_EX}( ) Server-File-Explorer")
                    print(f"  |-> 6 ({Fore.CYAN}X{Style.RESET_ALL}) WakeMeOnLan")
                
                event = keyboard.read_event()
                if event.event_type == keyboard.KEY_DOWN:
                    if event.name == 'nach-oben':
                        if current == 1: current = 6
                        else: current -= 1
                    elif event.name == 'nach-unten':
                        if current == 6: current = 1
                        else: current += 1
                    elif event.name == 'enter' or event.name == 'nach-rechts': return current
                    elif event.name == "0" or event.name == 'esc' or event.name == "backspace" or event.name == 'nach-links': return 0
                    elif event.name == "1": return 1
                    elif event.name == "2": return 2
                    elif event.name == "3": return 3
                    elif event.name == "4": return 4
                    elif event.name == "5": return 5
                    elif event.name == "6": return 6
        
        def select_websites():
            current = 1
            while True:
                clear()
                header()
                output("info", "Select Website in Category Websites")
                print()
                print(" Websites")
                print("  |")
                if current == 1:
                    print(f"  |-> 1 ({Fore.CYAN}X{Style.RESET_ALL}) CloudFlare")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Playit")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Github")
                elif current == 2:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) CloudFlare")
                    print(f"  |-> 2 ({Fore.CYAN}X{Style.RESET_ALL}) Playit")
                    print(f"  |-> 3 {Fore.LIGHTBLACK_EX}( ) Github")
                elif current == 3:
                    print(f"  |-> 1 {Fore.LIGHTBLACK_EX}( ) CloudFlare")
                    print(f"  |-> 2 {Fore.LIGHTBLACK_EX}( ) Playit")
                    print(f"  |-> 3 ({Fore.CYAN}X{Style.RESET_ALL}) Github")
                
                event = keyboard.read_event()
                if event.event_type == keyboard.KEY_DOWN:
                    if event.name == 'nach-oben':
                        if current == 1: current = 3
                        else: current -= 1
                    elif event.name == 'nach-unten':
                        if current == 3: current = 1
                        else: current += 1
                    elif event.name == 'enter' or event.name == 'nach-rechts': return current
                    elif event.name == "0" or event.name == 'esc' or event.name == "backspace" or event.name == 'nach-links': return 0
                    elif event.name == "1": return 1
                    elif event.name == "2": return 2
                    elif event.name == "3": return 3
        
        while True:
            category = select_category(last)
            last = category
            if category == 1:
                session = select_raspi()
                if session == 0: pass
                else:
                    clear()
                    if session == 1: subprocess.run(f"start cmd /k ssh {host[1][1]}@{host[1][0]}", shell=True)
                    elif session == 2: subprocess.run(f'"C://Program Files/RealVNC/VNC Viewer/vncviewer.exe" {host[1][0]}')
                    elif session == 3: subprocess.run(f'"C://Program Files/FileZilla FTP Client/filezilla.exe" {host[1][1]}@{host[1][0]}:22')
                    elif session == 4: subprocess.run('explorer "R:\"')
                    break
            elif category == 2:
                session = select_server_pc()
                if session == 0: pass
                else:
                    clear()
                    if session == 1: subprocess.run(f"start cmd /k ssh {host[0][1]}@{host[0][0]}", shell=True)
                    elif session == 2: subprocess.run(f'"C://Program Files/RealVNC/VNC Viewer/vncviewer.exe" {host[0][0]}')
                    elif session == 3: subprocess.run(f"mstsc /v:{host[0][0]}")
                    elif session == 4: subprocess.run(f'"C://Program Files/FileZilla FTP Client/filezilla.exe" {host[0][1]}@{host[0][0]}:22')
                    elif session == 5: subprocess.run('explorer "Z:\"')
                    elif session == 6: subprocess.run(f'"C://Program Files/WakeMeOnLan/WakeMeOnLan.exe" /wakeup {host[0][4]}')
                    break
            elif category == 3:
                clear()
                header()
                subprocess.run("cmd", shell=True)
            elif category == 4:
                session = select_websites()
                if session == 0: pass
                else:
                    clear()
                    if session == 1: subprocess.run("start https://dash.cloudflare.com/e992ae02235a1763c1028ac553343276/rapalle.net/dns/records", shell=True)
                    elif session == 2: subprocess.run("start https://playit.gg/account/tunnels", shell=True)
                    elif session == 3: subprocess.run("start https://github.com/RAPALLE2/Rapalle.net", shell=True)
                    break
            elif category == 0: break
            else: output("error", "Something went wrong")
        return
    info = ["info", "i", "infoscreen", "?"]
    help = ["-h", "h", "help"]
    cls = ["clear", "cls", "clearscreen", "empty", "space"]
    list_cmd = ["list", "ls", "l"]
    visual = ["advanced", "ask", "visual", "v"]
    credential = ["credential", "credentials"]
    reset = ["r", "reset"]
    restart = ["reload", "restart", "r", "reset"]
    stop = ["stop", "exit", "shutdown", "close", "s", "down", "close", "shut", "e", "c"]
    clear()
    header()
    if command == "": output("last", """Entered "Space" """)
    else: output("last", "Entered " + command)
    parts = command.lower().split()
    if len(parts) >= 2:
        category = parts[0]
        action = parts[1]
        if category in credential:
            if action in reset: credentials(True)
            elif action in (info or help): output("info", """Run "credentials reset" to reset the credentials, or "credentials list" to see them""")
            elif action in list_cmd: output("info", f"Listing all credentials: \n {credentials(False, True)} \n \n {credentials(False)}")
            else: output("error", f"Invalid action in category {category}.")
        else: output("error", "Invalid category.")
    elif len(parts) == 1:
        if command in stop:
            output("thanks", "Thank you for using software from rapalle.net. See you at the next startup.  :)")
            sys.exit()
        elif command in cls: clear()
        elif command in restart:
            subprocess.Popen([sys.executable, sys.argv[0]] + sys.argv[1:])
            sys.exit()
        elif command in (info or list_cmd or help): 
            clear()
            header()
            output("info", "Type <category> info to see all available commands in this category")
            output("info", "All available categories: credentials")
        elif command in visual:
            ask(host)
            clear()
            header()
    else: output("error", "Please enter a command in the format: <category> <action> <service> if service needed")


def credentials(reset=False, return_credentials=False):
    credentials_file = 'credentials.json'
    def load_credentials():
        if os.path.exists(credentials_file):
            with open(credentials_file, 'r') as file: return json.load(file)
        else: return None
        
    def save_credentials(credentials):
        with open(credentials_file, 'w') as file: json.dump(credentials, file, indent=4)
    
    def get_credentials():
        credentials = {}
        print("git")
        credentials['git_repo_owner'] = input("Enter git_repo_owner: ")
        credentials['git_repo_name'] = input("Enter git_repo_name: ")
        credentials['git_branch'] = input("Enter git_branch: ")
        print("raspi")
        credentials['raspi_ip'] = input("Enter raspi_ip: ")
        credentials['raspi_user'] = input("Enter raspi_user: ")
        credentials['raspi_password'] = input("Enter raspi_password: ")
        credentials['raspi_path_to_repo'] = input("Enter raspi_path_to_repo: ")
        print("server")
        credentials['server_ip'] = input("Enter server_ip: ")
        credentials['server_user'] = input("Enter server_user: ")
        credentials['server_password'] = input("Enter server_password: ")
        credentials['server_path_to_repo'] = input("Enter server_path_to_repo: ")
        credentials['server_mac'] = input("Enter server_mac: ")
        print("pc")
        credentials['pc_ip'] = input("Enter pc_ip: ")
        credentials['pc_path_to_repo'] = input("Enter pc_path_to_repo: ")
        return credentials
    
    credentials = load_credentials()
    if reset:
        if os.path.exists(credentials_file): os.remove(credentials_file)
        save_credentials(get_credentials())
        credentials = load_credentials()
    if not credentials:
        output("error", "Cannot load some or all credentials, please enter")
        if os.path.exists(credentials_file): os.remove(credentials_file)
        save_credentials(get_credentials())
        credentials = load_credentials()
    else: output("system", "Loaded all credentials")
    if return_credentials: return credentials
    else: 
        return [[
                [credentials["server_ip"], credentials["server_user"], credentials["server_password"], credentials["server_path_to_repo"], credentials["server_mac"]], 
                [credentials["raspi_ip"], credentials["raspi_user"], credentials["raspi_password"], credentials["raspi_path_to_repo"]], 
                [credentials["pc_ip"], credentials["pc_path_to_repo"]]
            ],[
                credentials["git_repo_owner"], credentials["git_repo_name"], credentials["git_branch"], 
                f'https://api.github.com/repos/{credentials["git_repo_owner"]}/{credentials["git_repo_name"]}/commits?sha={credentials["git_branch"]}', 
                f"https://github.com/{credentials["git_repo_owner"]}/{credentials["git_repo_name"]}.git"
            ]]
    
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
file_handler = logging.FileHandler("error.log")
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)

version = "1.0.1 Alpha Pre-release"
try_count = 1

logger.info("**---- Software started ----**")

while not try_count == 0: 
    try_count -= 1
    try:
        header()
        os_type_value = os_type()
        if os_type_value == "w": output("system", "Running on Windows")
        elif os_type_value == "l":  output("system", "Running on Linux")
        local_ip = get_local_ip()
        information = credentials()
        if os_type_value == "l" and local_ip == information[0][1][0]:
            trys = 5 
            while not trys == 0:
                trys -= 1
                status = wake_on_lan(information[0][0], command=["sudo", "etherwake", information[0][0][4]])
                if status == "online": break
                time.sleep(60)
        elif os_type_value == "w":
            if local_ip == information[0][0][0]:
                execute_via_tempscript(f"start {information[0][0][3]}\\playit\\playit.exe")
                raspi_boot(information[0][1])
                check_commit(information)
            elif local_ip == information[0][2][0] or local_ip == "192.168.178.176":
                while True: execute(input("Enter command to execute >> ").lower(), information[0])
            break
        else: output("error", "This script is not running on either Windows or Linux.")
        break
    
    except Exception as e:
        output("error", f"An error occurred: {e}")
        traceback.print_exc()
        logger.error("An error occurred: %s", e)
        output("system", "Continuing program")
        time.sleep(3)
