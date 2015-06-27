File.open(ARGV[0]).each_line do |line|
  string,char  = line.split(',')
  char = char.chomp
  index = string.reverse.index(char)
  if !index.nil?
    puts string.size - index
  else
    puts -1
  end
end
