inputs = []

with open("input.txt", "r") as f:
    for line in f:
        inputs.append(line.strip())

current_point = 50
password = 0

for input in inputs:
    left_or_right = input[0]
    rotation = int(input[1:])

    if left_or_right == "L":
        current_point = (current_point - rotation) % 100
    else:
        current_point = (current_point + rotation) % 100

    if current_point == 0:
        password += 1

print("passwd", password)
