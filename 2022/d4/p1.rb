require 'set'

def main
  sum = 0
  File.open('input.txt').each do |line|
    a = line.split ','
    s1 = parse a[0] 
    s2 = parse a[1]
    if s1 > s2 
      sum += 1 if s2.subset? s1
    else
      sum += 1 if s1.subset? s2
    end
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
