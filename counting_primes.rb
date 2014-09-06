def is_prime? num
  (2..Math.sqrt(num)).each do |i|
    return false if (num % i == 0 && i < num)
  end
  true
end

File.open(ARGV[0]).each_line do |line|
  line = line.chomp.split(',')
  range = (line[0].to_i..line[1].to_i)

  puts range.select{|x| is_prime? x}.count
end
