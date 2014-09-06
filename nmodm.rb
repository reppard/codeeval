def mod(n,m)
  mod = n - m
  return mod if mod == 0
  return n if mod < 0
  mod(mod,m)
end


File.open(ARGV[0]).each_line{ |line|
  n,m = line.split(',')
  n = n.chomp.to_i
  m = m.chomp.to_i
  puts mod(n,m)
}
