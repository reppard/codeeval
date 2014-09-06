File.open(ARGV[0]).each_line do |line|
  nums = line.chomp.gsub(/(\(|\))/,"").split(/(\,\s|\s)/).select{|c| c.match /\d/}
  nums = nums.map{|n| n.to_i}
  x = (nums[0] - nums[2])**2
  y = (nums[1] - nums[3])**2
  puts Math.sqrt(x+y).to_i
end
