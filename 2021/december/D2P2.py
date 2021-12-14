f_name = 'input'
horizontalPosition = 0
depth = 0
aim = 0
try:
    with open(f_name) as f_obj:
        lines = f_obj.readlines()

    for i in lines:
        lista = i.split(" ")
        direction = lista[0]
        unit = int(lista[1])

        if direction == "forward":
            horizontalPosition = horizontalPosition + unit
            depth = depth + unit * aim
        elif direction == "down":
            aim = aim + unit
        else:  # up
            aim = aim - unit

    print(horizontalPosition * depth)

except FileNotFoundError:
    msg = "Can't find file {0}.".format(f_name)
    print(msg)
