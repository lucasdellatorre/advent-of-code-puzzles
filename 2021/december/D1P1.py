f_name = 'input'
soma = 0
try:
    with open(f_name) as f_obj:
        lines = f_obj.readlines()

    for idx, elem in enumerate(lines):
        thiselem = elem
        nextelem = lines[(idx + 1) % len(lines)]
        if int(thiselem) < int(nextelem):
            soma = soma + 1

    print(soma)


except FileNotFoundError:
    msg = "Can't find file {0}.".format(f_name)
    print(msg)
