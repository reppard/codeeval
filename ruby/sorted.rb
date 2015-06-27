File.open(ARGV[0]).each_line do |line|
  sorted = line.chomp.split(' ').map{|n| n.to_f}.sort
  puts sorted.map{|n| n.to_s.split('.')[1].size < 3 ? n.to_s+"0" : n.to_s}.join(' ')
end
