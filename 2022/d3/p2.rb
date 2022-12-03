def main
    sum = 0
    group = []
    File.open("input.txt").each do |line|
      if group.length == 6
        b1,b2 = findBadge(group[0..2]), findBadge(group[3..6])
        p b1,b2 
        sum += parse(b1) + parse(b2)
        group.clear
      else
        group << line.chop
      end
    end
  p sum
end

def findBadge(g)
  r = ''
  g[0].each_char do |char|
    achou = false
    if g[1].include? char 
      achou = true
    end
    if g[2].include? char 
      return char if achou
    end
  end
end

def parse(char)
  unless ('A'..'Z').include? char 
    return char.ord - 96
  else 
    return char.ord - 38
  end
end

main
