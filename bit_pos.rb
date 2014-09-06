sample = File.open(ARGV[0],'r')

sample.each do |line|
  n,p1,p2 = line.split(',').collect{|i| i.to_i}
  base = n.to_s(2)
  puts base[-p1] == base[-p2]
end
