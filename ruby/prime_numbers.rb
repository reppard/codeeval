def is_prime? num
  (2..Math.sqrt(num)).each do |i|
    return false if (num % i == 0 && i < num)
  end
  true
end

File.open(ARGV[0]).each_line do |line|
  line = line.chomp
  range = (2..line.to_i - 1)

  puts range.select{|x| is_prime? x}.collect{|x|x.to_s}.join(',')
end
