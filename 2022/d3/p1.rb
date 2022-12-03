common = ''
sum = 0
File.open('input.txt').each do |line|
  r1,r2 = line.chars.each_slice(line.length / 2).map(&:join)
  r1.each_char do |char|
    common = char if r2.include? char
  end
  sum += if ('A'..'Z').include? common
           common.ord - 38
         else
           common.ord - 96
         end
end
p sum
