total = 0
empty = set()
for line in open('input.txt'):
    set1 = set()
    set2 = set()
    elf1, elf2 = line.split(',')
    elf1 = [int(x) for x in elf1.split('-')]
    elf2 = [int(x) for x in elf2.split('-')]
    for i in range(elf1[0], elf1[1]+1):
        set1.add(i)
    for i in range(elf2[0], elf2[1]+1):
        set2.add(i)
    if set1 & set2 == set1 or set1 & set2 == set2:
        print(line)
        total+=1
print(total)
