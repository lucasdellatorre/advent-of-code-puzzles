def main
  sum = 0
  group = []
  File.open('input.txt').each do |line|
    group << line.chop
    next if group.length != 3

    b1 = findBadge(group[0..2])
    sum += parse(b1)
    group.clear
  end
  p sum
end

def findBadge(g)
  g[0].each_char do |c|
    return c if g[1].include? c and g[2].include? c
  end
end

def parse(char)
  return char.ord - 96 unless ('A'..'Z').include? char

  char.ord - 38
end

main
