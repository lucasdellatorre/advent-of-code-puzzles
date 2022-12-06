def main
  matrix = []
  instructions = []
  File.open('example.txt').each do |line|
    magic_string = ''
    cell = []
    if line[0, 4] == 'move'
      instructions << add_instruction(line)
    else
      line.each_char do |c|
        if c.ord == 32
          magic_string += '32'
        else 
          magic_string = ''
        end
        if magic_string == '32323232' 
          magic_string = ''
          cell << '#'
        elsif c.ord >= 65 && c.ord <= 90
          cell << c
        end
      end
    end
    matrix << cell unless cell.empty?
  end
  matrix = parse matrix
  p solve matrix, instructions
end

def add_instruction(line)
  aux = []
  instruction = line.split ' '
  6.times { |i| aux << instruction[i].to_i if i.odd? }
  aux
end

def parse(matrix)
  aux = []
  n = matrix[0].length
  n.times { aux << [] }
  matrix.each do |arr|
    (0..n-1).each { |x| aux[x] << arr[x] unless arr[x] == '#' } 
  end
  aux
end

def solve(matrix, instructions)
  instructions.each do |arr|
    aux = []
    move = arr[0]
    from = arr[1] - 1
    to = arr[2] - 1
    move.times { matrix[to].unshift(matrix[from].shift) }
  end
  result = ''
  matrix.each { |arr| result += arr.first }
  result
end

main
