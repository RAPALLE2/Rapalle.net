#1st vars:
#integer (numbers)
var1 = 3
#boolean (true/false)
var2 = True # False
#string (text)
var3 = "hello"

#var mixing
one = 5
two = 4
summ = one + two # = 9

#for integer instead of trys = trys - 1, do trys -= 1 or instead of count = count + 1, do count += 1p

name = "hans"
text = "hello, "
result = text + name # = hello, hans
# or
string = "hello"
out = string + ", " + name

# same for print
#1. print(text + name)
#2. print(string + ", " + name)


#2nd if, try, while
#if:
if var1 == 3:
    pass
# at integer also works ==, <, >, >=, <=
if var2 == True:
    pass
#or
if var2:
    pass
#because its true it dont need to look if its true
if var3 == "hello":
    pass
#or
if var3 == name:
    pass

#elif if it should end after first right option
#else for if nothing above was the right option

#try
try:
    pass
except:
    pass
#try is if something could went wrong so not the programm closes but it does the stuff in except good for imports that have to get installed by pip

#while
while True:
    pass
# runs forever

trys = 5
while trys > 0:
    trys = trys - 1
#or
while True:
    if trys > 0:
        trys = trys - 1
    else:
        break

