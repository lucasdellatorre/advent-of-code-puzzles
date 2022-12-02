$dic = { 'X' => 1, 'Y' => 2, 'Z' => 3, 'D' => 3, 'L' => 0, 'W' => 6 }

def main
    totalScore = 0
    File.open("input.txt").each do |line|
        r = line.split " "
        totalScore += wins r[0], r[1]
    end
    puts totalScore
end

def wins(p1, p2)
    s = p1.to_i + p2.to_i
    sum = 0
    case 
    when s == "AX" || s == "BY" || s == "CZ"
        sum = $dic["D"]
    when s == "AZ" || s == "BX" || s == "CB"
        sum = $dic["L"]
    when s == "AY" || s == "BZ" || s == "CX"
        sum = $dic["W"]
    end
    return sum + $dic[p2]
end

main

