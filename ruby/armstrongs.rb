File.open(ARGV[0]).each_line { |line|
  num = line.chomp
  sum_of_pows = num.split('').collect { |n| n.to_i**num.size }.inject(:+)
  puts num.to_i == sum_of_pows ? 'True' : 'False'
}
