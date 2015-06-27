lines = []

File.open(ARGV[0]).each_line do |line|
  lines << line.chomp
end

n = lines.shift.to_i
lines.sort_by!{|l| l.length}
longest = lines.last(n)

longest.reverse.each do |line|
  puts line
end
