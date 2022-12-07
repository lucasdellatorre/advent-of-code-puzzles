require 'set'

s = File.read('input.txt').chomp
N = s.length
r = 0
pos = 0
(0..N - 1).each do |i|
  set = Set.new
  (i..N).each do |j|
    r += 1
    break if set.include? s[j]

    set << s[j]
    if set.length == 4
      puts j
      break
    end
  end
  break if set.length == 4
end
p r
p pos + 1
