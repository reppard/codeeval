#File.open('multi_list.txt').each_line do |line|
File.open(ARGV[0]).each_line do |line|
  first_arr, second_arr = line.chomp.split('|').collect{|x| x.split(' ')}
  puts first_arr.collect.with_index{|v,i| "#{v.to_i*second_arr[i].to_i} "}.join.chomp
end
