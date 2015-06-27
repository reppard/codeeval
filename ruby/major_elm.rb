# lines = ["92,19,19,76,19,21,19,85,19,19,19,94,19,19,22,67,83,19,19,54,59,1,19,19",
#          "92,11,30,92,1,11,92,38,92,92,43,92,92,51,92,36,97,92,92,92,43,22,84,92,92",
#          "4,79,89,98,48,42,39,79,55,70,21,39,98,16,96,2,10,24,14,47,0,50,95,20,95,48,50,12,42"]

File.open(ARGV[0]).each_line do |line|
#lines.each do |line|
  arr = line.chomp.split(',')
  freq = arr.inject(Hash.new(0)){|h,v| h[v] += 1; h}
  max = arr.max_by{ |v| freq[v] }
  major = arr.count(max) > (arr.count/2)
  puts major ? max : 'None'
end

