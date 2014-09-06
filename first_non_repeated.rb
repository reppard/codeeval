File.open(ARGV[0]).each_line do |line|
  line = line.chomp

  found = false
  index = 0

  while not found
    found,letter = true, line[index] if line.count(line[index]) == 1
    index += 1
  end

  puts letter
end
