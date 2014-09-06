File.open(ARGV[0]).each_line do |line|
  miles = line.chomp.split(/(\,|\;)/).select{|x| x.match(/\d+/)}.map{|x| x.to_i}.sort
  collect = []
  collect << miles.shift
  last = collect.last

  miles.size.times do
    collect << miles.first - last
    last = miles.shift
  end

  puts collect.map{|x| x.to_s}.join(',')
end
