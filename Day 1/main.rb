# Author @ricks
all_elf_cals = [2000,0]

File.open("/Users/richardsantos/Desktop/dev/advent-of-code-2022/Day 1/input.txt", "r") do |file_handle|
  file_handle.each_line do |calories|
    if calories.strip != ""
      all_elf_cals[-1] += calories.to_i
    else
      all_elf_cals << 0
    end
  end
end

print(all_elf_cals.sort.last(3).sum)