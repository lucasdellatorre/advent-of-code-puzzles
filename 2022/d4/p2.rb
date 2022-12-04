require 'set'

def main
  sum = 0
  File.open('input.txt').each do |line|
    a = line.split ','
    s1 = parse a[0] 
    s2 = parse a[1]
    intersection = s1 & s2 
    sum += 1 unless intersection.empty?
  end
  p sum
end

def parse(section)
  set = Set.new
  aux = section.split '-'
  (aux[0].to_i..aux[1].to_i).each{ |x| set << x }
  set
end

main
