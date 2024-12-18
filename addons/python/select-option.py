import keyboard # pip install keyboard
from colorama import Fore, Style, init  # pip install colorama
import time
import os
import platform

def Clear():

    if platform.system() == "Windows":
        os.system('cls')
    else:
        os.system('clear')

def ask():
    current = 1
    while True:
        event = keyboard.read_event()
        if event.event_type == keyboard.KEY_DOWN:
            if event.name == 'nach-oben':
                if current == 1:
                    current = 5
                else:
                    current -= 1
            elif event.name == 'nach-unten':
                if current == 5:
                    current = 1
                else:
                    current += 1
            elif event.name == 'enter':
                return current
        Clear()
        if current == 1:
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Option 1")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 2")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 3")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 4")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 5")
        elif current == 2:
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 1")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Option 2")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 3")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 4")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 5")
        elif current == 3:
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 1")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 2")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Option 3")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 4")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 5")
        elif current == 4:
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 1")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 2")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 3")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Option 4")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 5")
        elif current == 5:
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 1")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 2")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 3")
            print(f"{Fore.LIGHTBLACK_EX}( ) Option 4")
            print(f"({Fore.CYAN}X{Style.RESET_ALL}) Option 5")
        time.sleep(0.1)
ask()