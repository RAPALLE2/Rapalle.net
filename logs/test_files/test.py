import keyboard #pip install keyboard

def ask():
    current = 1
    while True:
        
        event = keyboard.read_event()

        if event.event_type == keyboard.KEY_DOWN:
            if event.name == 'up':
                if current == 1:
                    current = 5
                else:
                    current += 1
            elif event.name == 'down':
                if current == 5:
                    current = 1
                else:
                    current -= 1    
            elif event.name == 'enter':
                break

        if current == 1:
            print("(X) Option 1")
            print("( ) Option 2")
            print("( ) Option 3")
            print("( ) Option 4")
            print("( ) Option 5")
        elif current == 2:
            print("( ) Option 1")
            print("(X) Option 2")
            print("( ) Option 3")
            print("( ) Option 4")
            print("( ) Option 5")
        elif current == 3:
            print("( ) Option 1")    
            print("( ) Option 2")
            print("(X) Option 3")
            print("( ) Option 4")
            print("( ) Option 5")
        elif current == 4:
            print("( ) Option 1")
            print("( ) Option 2")
            print("( ) Option 3")
            print("(X) Option 4")
            print("( ) Option 5")
        elif current == 5:
            print("( ) Option 1")
            print("( ) Option 2")
            print("( ) Option 3")
            print("( ) Option 4")
            print("(X) Option 5")
        break    
    return current    
    
ask()
