File.open(ARGV[0]).each_line do |line|
  sample = line.chomp.split(' ')

  string = []
  while !sample.empty?
    num = [sample.shift]
    while sample[0] == num[0]
      num << sample.shift
    end
    string << "#{num.size} #{num[0]}"
  end
  puts string.join(' ')
end

