def permute_map(n)
  results = []
  a, p = (0...n).to_a, [0] * n
  i, j = 0, 0
  i = 1
  results << yield(a)
  while i < n
    if p[i] < i
      j = i % 2 * p[i] # If i is odd, then j = p[i], else j = 0
      a[j], a[i] = a[i], a[j] # Swap
      results << yield(a)
      p[i] += 1
      i = 1
    else
      p[i] = 0
      i += 1
    end
  end
  return results
end

a = permute_map(ARGV[0].to_i)
print a
