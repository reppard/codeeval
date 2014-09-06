#File.open('swap.txt').each_line do |line|
File.open(ARGV[0]).each_line do |line|
  nums, seq = line.split(':')
  nums = nums.split(' ')
  seqs = seq.split(',')

  seqs.each do |seq|
    switch = seq.split('-')
    first = nums[switch[0].to_i]
    second = nums[switch[1].to_i]

    nums[switch[0].to_i] = second
    nums[switch[1].to_i] = first
  end

  puts nums.join(' ')
end
