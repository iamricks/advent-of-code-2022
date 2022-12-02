ans = 0

strat = {
  "A" => "R",
  "B" => "P",
  "C" => "S",
  "X" => "R",
  "Y" => "P",
  "Z" => "S",
}

def calc_res(opp, me)
  find_strat = {
    "A": {
      "win": 2,
      "lose": 3,
      "draw": 1,
    },
    "B": {
      "win": 3,
      "lose": 1,
      "draw": 2,
    },
    "C": {
      "win": 1,
      "lose": 2,
      "draw": 3,
    }
  }

  case me
  when "X"
    return find_strat[opp.to_sym][:lose]
  when "Y"
    return find_strat[opp.to_sym][:draw] + 3
  when "Z"
    return find_strat[opp.to_sym][:win] + 6
  end
end

File.open("/Users/richardsantos/Desktop/dev/advent-of-code-2022/Day 2/input.txt", "r") do |file_handle|
  file_handle.each_line do |line|
    picks = line.split(" ")
    opp = picks[0]
    me = picks[1]

    ans += calc_res(opp, me)
  end
end

# Kind of choked on part 2
# -------Part 1--------   -------Part 2--------
# Day       Time  Rank  Score       Time  Rank  Score
#   2   00:09:28  2584      0   00:31:53  8675      0
#   1   00:09:42  5179      0   00:20:40  6877      0
puts('========')
puts(ans)
puts('========')