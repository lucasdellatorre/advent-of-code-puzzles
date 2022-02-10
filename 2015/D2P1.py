
from mailbox import linesep
from re import A

f_name = 'input2'

total_square_feet = 0

def area_smallest_side(l,w,h):
    smallestSide = int(l) * int(w)
    area2 = int(w) * int(h)
    area3 = int(h) * int(l)

    aux = 0

    if smallestSide > area2:
        aux = smallestSide
        smallestSide = area2
        area2 = aux

    if smallestSide > area3:
        aux = smallestSide
        smallestSide = area3
        area3 = aux

    return smallestSide

try:
    with open(f_name) as f_obj:
        lines = f_obj.readlines()

    for i in lines:
        line = i.split("x")
        l = int(line[0])
        w = int(line[1])
        h = int(line[2])

        formula = 2*l*w + 2*w*h + 2*h*l

        formula +=  area_smallest_side(l,w,h)

        total_square_feet += formula

except FileNotFoundError:
    msg = "Can't find file {0}.".format(f_name)
    print(msg)

print(total_square_feet)
