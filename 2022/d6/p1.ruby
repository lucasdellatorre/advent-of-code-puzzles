require 'set'
def main
  foundMark = false
  set = Set.new
  cont = 0
  cont2 = 0
  setLength = 0
  nice_char = ''
  File.open('input.txt').each do |line|
    line.chomp.each_char do |c|
      set << c
      cont += 1 if set.include? c
      cont = cont - cont2
      if cont2 == 4
        foundMark = true
        niceChar = c
        break
      end
    end
    p cont, cont2
    cont2 += 1
    if foundMark
      p nice_char
      break
    end
  end
end

main
