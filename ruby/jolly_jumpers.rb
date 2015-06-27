File.open(ARGV[0]).each_line do |line|
  line = "1 4 2 3"
  seq = line.chomp.split(' ').collect{|x| x.to_i}

  abs = []
  index = 0

  while index < seq.size - 1
    abs << (seq[index] - seq[index + 1]).abs
    index += 1
  end

  jolly = ![*1..seq.size - 2].collect{|x| abs.include?(x) }.include?(false)

  puts jolly ? 'Jolly' : 'Not jolly'
end
