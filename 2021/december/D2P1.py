f_name = 'input'
horizontalPosition = 0
depth = 0
try:
    with open(f_name) as f_obj:
        lines = f_obj.readlines()

    for i in lines:
        lista = i.split(" ")
        direction = lista[0]
        unit = int(lista[1])

        if direction == "forward":
            horizontalPosition = horizontalPosition + unit
        elif direction == "down":
            depth = depth + unit
        else:  # up
            depth = depth - unit

    print(horizontalPosition * depth)
    
except FileNotFoundError:
    msg = "Can't find file {0}.".format(f_name)
    print(msg)
