def main
    common = ''
    sum = 0
    File.open("input.txt").each do |line|
      r1,r2 = line[0, line.length / 2], line[line.length / 2, line.length]
      r1.each_char do |char|
        common = char if r2.include? char
      end
      unless ('A'..'Z').include? common 
        sum += common.ord - 96
      else 
        sum += common.ord - 38
      end
    end
    p sum
end

main
