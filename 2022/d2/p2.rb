$dic = { 'X' => 1, 'Y' => 2, 'Z' => 3, 'A' => 1, 'B' => 2, 'C' => 3, 'D' => 3, 'L' => 0, 'W' => 6 }

def main
    totalScore = 0
    File.open("input.txt").each do |line|
        r = line.split " "
        totalScore += wins r[0], r[1]
    end
    puts totalScore
end

def wins(p1, p2)
    sum = 0
    case
    when p2 == "X" # lose
        case
        when p1 == "A"
            sum = $dic["Z"]
        when p1 == "B"
            sum = $dic["X"]
        when p1 == "C"
            sum = $dic["Y"]
        end
        sum += $dic["L"]
    when p2 == "Y" # draw
        sum = $dic["D"] + $dic[p1]
    when p2 == "Z" # win
        case
        when p1 == "A"
            sum = $dic["Y"]
        when p1 == "B"
            sum = $dic["Z"]
        when p1 == "C"
            sum = $dic["X"]
        end
        sum += $dic["W"]
    end
    return sum
end

main
