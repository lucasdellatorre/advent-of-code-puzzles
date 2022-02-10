
f_name = 'input2'

total_feet_ribbon = 0

def smallest_perimeter(l, w, h):

    smallest_perimeter = int(l) * 2 + int(w) * 2
    p2 = int(w)* 2 + int(h) * 2
    p3 = int(h)* 2 + int(l) * 2

    aux = 0

    if smallest_perimeter > p2:
        aux = smallest_perimeter
        smallest_perimeter = p2
        p2 = aux

    if smallest_perimeter > p3:
        aux = smallest_perimeter
        smallest_perimeter = p3
        p3 = aux

    return smallest_perimeter

try:
    with open(f_name) as f_obj:
        lines = f_obj.readlines()

    for i in lines:
        line = i.split("x")
        l = int(line[0])
        w = int(line[1])
        h = int(line[2])

        formula = l*w*h

        formula +=  smallest_perimeter(l, w, h)

        total_feet_ribbon += formula

except FileNotFoundError:
    msg = "Can't find file {0}.".format(f_name)
    print(msg)

print(total_feet_ribbon)



