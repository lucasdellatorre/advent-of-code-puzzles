inputs = []

with open("input.txt", "r") as f:
    for line in f:
        inputs.append(line.strip())

current_point = 50
password = 0

for input in inputs:
    left_or_right = input[0]
    rotation = int(input[1:])
    password += rotation // 100
    rotation = rotation % 100

    if left_or_right == "L":
        next_point = (current_point - rotation) % 100

        if current_point != 0 and next_point > current_point or next_point == 0:
            password += 1
    else:
        next_point = (current_point + rotation) % 100
        if current_point != 0 and next_point < current_point or next_point == 0:
            password += 1

    current_point = next_point


print("passwd", password)
