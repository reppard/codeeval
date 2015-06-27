def subtract(num,patt)
  num_split = num.split('')
  count = patt.split('-')[0].size
  first = num_split.shift(count).join.to_i
  second = num_split.join.to_i

  first - second
end

def add(num,patt)
  num_split = num.split('')
  count = patt.split('+')[0].size
  first = num_split.shift(count).join.to_i
  second = num_split.join.to_i

  first + second
end


File.open('split.txt').each_line do |line|
#File.open(ARGV[0]).each_line do |line|
  num,patt = line.chomp.split(' ')

  answer = patt =~ /\-/ ? subtract(num,patt) : add(num,patt)

  puts answer
end
