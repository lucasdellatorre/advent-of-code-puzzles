import sys

ids_ranges = [x for line in sys.stdin.read().splitlines() for x in line.split(",")]

res = 0


def is_invalid(id):
    n = len(id)
    w_limit = (n // 2) + 1
    invalid = True

    for window_size in range(1, w_limit):
        window = id[0:window_size]

        for w in range(window_size, n, window_size):
            if window != id[w : w + window_size]:
                invalid = False
                break
            else:
                invalid = True
        if invalid:
            return True

    return False


for id_range in ids_ranges:
    ranges = id_range.split("-")

    start, end = int(ranges[0]), int(ranges[1])

    for id in range(start, end + 1):
        if is_invalid(str(id)):
            res += id

print(res)
