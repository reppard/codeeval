#File.open('find_a_writer.txt').each_line do |line|
File.open(ARGV[0]).each_line do |line|
  unless line.chomp == ""
    name,key = line.chomp.split("|")

    name_arr = name.split('')
    key_arr  = key.split(' ').collect{ |n| n.to_i }

    name = key_arr.collect{ |i| name_arr[i-1] }.join

    puts name
  end
end
