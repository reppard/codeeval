#lines = ["2000 and was not However, implemented 1998 it until;9 8 3 4 1 5 7 2",
#         "programming first The language;3 2 1",
#         "programs Manchester The written ran Mark 1952 1 in Autocode from;6 2 1 7 5 3 11 4 8 9"]

#lines.each do |line|
File.open(ARGV[0]).each_line do |line|
  data,keys = line.chomp.split(';').collect{ |x| x.split(' ') }

  arr = Array.new(data.size)

  while !keys.empty?
    arr[keys.shift.to_i - 1] = data.shift
  end
  puts arr.collect{|x| x.nil? ? data.pop : x}.join(' ')
end
