def is_happy?(num)
  return num if num == 1
  return num if num == 0
  if num > 9
    num.to_s.split('').collect{|x| x.to_i**2}.inject(:+)
  else
    num**2
  end
end

File.open(ARGV[0]).each_line{ |num|
  num = num.chomp.to_i
  count = 0
  while num >=2
    num = is_happy?(num)
    count += 1
    if count > 1000
      num = 0
      break
    end
  end
  puts num
}

