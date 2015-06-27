require 'json'

File.open(ARGV[0]).each_line do |line|
  items = JSON.parse(line.chomp)["menu"]["items"]
  items.delete(nil)

  sum = items.select{|x| !x["label"].nil? }.collect{|x| x["id"].to_i}.inject(:+)

  puts sum ? sum : 0
end
