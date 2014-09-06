#lines = ["Hello World,World",
#        "Hello CodeEval,CodeEval",
#        "San Francisco,San Jose"]

#lines.each do |line|
File.open(ARGV[0]).each_line do |line|
  a,b = line.chomp.split(',')

  puts a.match(/#{b}$/) ? 1 : 0
end
