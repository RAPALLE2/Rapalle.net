import colorama

from prompt_toolkit import PromptSession
from prompt_toolkit.completion import NestedCompleter
from prompt_toolkit.styles import Style

main_completer = NestedCompleter.from_nested_dict({
    "service": {
        "web": {
            "host": None,
            "log": None
        },
        "git": None,
        "cloud": None,
        "network": None
    },
    "exit": None
})

gray_style = Style.from_dict({'prompt': '#888888'})
black_style = Style.from_dict({'prompt': "#000000"})

print("      ______  ___  ______  ___   _      _      _____  _   _  _____ _____")
print("      | ___ \\/ _ \\ | ___ \\/ _ \\ | |    | |    |  ___|| \\ | ||  ___|_   _|")
print("      | |_/ / /_\\ \\| |_/ / /_\\ \\| |    | |    | |__  |  \\| || |__   | |")
print("      |    /|  _  ||  __/|  _  || |    | |    |  __| | . ` ||  __|  | |")
print("      | |\\ \\| | | || |   | | | || |____| |____| |____| |\\  || |___  | |")
print("      \\_| \\_\\_| |_/\\_|   \\_| |_/\\_____/\\_____/\\____(_)_| \\_/\\____/  \\_/")
print("      Made by Rapalle            Automatic Server Management Software")
print("      Version "+colorama.Fore.LIGHTBLACK_EX+"1.0.0")

while True:
    

    command = PromptSession().prompt([('class:prompt', ' >> ')], completer=main_completer, style=gray_style)

    parts = command.split(" ")
    if parts[0] in ("exit", "stop", "break", "quit"): break
    elif parts[0] == "service":
        if parts[1] == "web":
            if parts[2] == "host": pass
            elif parts[2] == "log": pass
        elif parts[2] == "git":
            if parts[3] == "": pass
            elif parts[3] == "": pass
        elif parts[2] == "cloud":pass
        elif parts[2] == "network":pass



















