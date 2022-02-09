f_name = 'input'
currentFloor = 0

try:
    with open(f_name) as f_obj:
        line = f_obj.readline()

    for i in range(len(line)):
        
        if currentFloor == -1:
            print(i)
            break
        if line[i] == '(':
            currentFloor = currentFloor + 1
        else:
            currentFloor = currentFloor - 1;
        

except FileNotFoundError:
    msg = "Can't find file {0}.".format(f_name)
    print(msg)
