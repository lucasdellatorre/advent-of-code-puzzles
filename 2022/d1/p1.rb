sum = 0
biggest = 0
File.open("input.txt").each do |line|
    unless line == "\n"
      sum += line.to_i
    else
      biggest = sum if sum > biggest
      sum = 0
    end
  end
  puts biggest
