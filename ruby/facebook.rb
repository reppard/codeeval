File.open(ARGV[0]).each_line{ |sample|
  sample = sample.chomp.downcase.gsub(/[^a-z]/,'').split('').sort
  counts = []

  while sample.size > 0
    count = sample.count(sample.last)
    counts << count
    sample.pop(count)
  end

  sum = 0
  base = 26
  counts.sort!

  while counts.size > 0
    sum += base * counts.pop
    base -= 1
  end
  puts sum
}
