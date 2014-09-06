def format(n)
  n = n.to_s
  spaces = 4 - n.size
  spaces.times do
    n = " " + n
  end
  n
end

collect = (1..12).collect do |mult|
            (1..12).collect do |i|
              i * mult
            end
          end

collect.each do |line|
  puts line.collect{ |n| format(n) }.join('')
end
