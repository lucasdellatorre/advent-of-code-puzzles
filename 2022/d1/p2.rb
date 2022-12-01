elfs = []
sum = 0
File.open("input.txt").each do |line|
    unless line == "\n"
      sum += line.to_i
    else
      elfs << sum if elfs.length < 3
      elfs.sort!
      elfs[0] = sum if elfs[0] < sum
      sum = 0
    end
  end
  puts elfs.sum
