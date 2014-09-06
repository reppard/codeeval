sample = File.open(ARGV[0],'r')

def f(n)
  return 0 if n == 0
  return 1 if n == 1
  f(n-1) + f(n-2)
end

sample.each do |line|
  puts f(line.to_i)
end

sample.close
