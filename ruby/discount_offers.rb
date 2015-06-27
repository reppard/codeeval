def get_letters(product)
  product.split('').select{ |x|
    [*'a'..'z'].include?(x.downcase)
  }.join('')
end

def get_vowels(string)
  string.split('').select{ |x|
    ['a','e','i','o','u','y'].include?(x.downcase)
  }.join('')
end

def get_cons(string)
  cons = ('a'..'z').select{ |char|
    !['a','e','i','o','u','y'].include?(char)
  }

  string.split('').select{ |x|
    cons.include?(x.downcase)
  }.join('')
end

def even_letter_count?(product)
  get_letters(product).size % 2 == 0
end

def common_factors?(x,y)
  (get_facts(x) & get_facts(y)).size > 0
end

def get_facts(n)
  (2..n).select{|i| n % i == 0 }
end

def get_ss(product, cust_name)
  if even_letter_count?(product)
    ss = get_vowels(cust_name).size * 1.5
  else
    ss = get_cons(cust_name).size
  end

  if common_factors?(get_letters(product).size, get_letters(cust_name).size)
    ss = ss * 1.5
  end
  ss.to_f
end

def get_all_ss(name,products)
  sss = []
  products.each{|product|
    sss << get_ss(product,name)
  }
  sss
end

def formatted(num)
  num = num.to_s
  if num =~ /\./
    num.split('.')[1].size == 1 ? "#{num}0" : num
  end
end

def get_max_sum(ss_sets)
  sets  = ss_sets.size
  nop   = ss_sets[0].size

  if nop < sets
    offset = sets - nop
    ss_sets = ss_sets.select{|p| offset.times{ p << 0.0 }}
    nop   = ss_sets[0].size
  end

  max_sum = 0
  #perms = [*0..sets-1].permutation(nop)
  #perms.each{ |perm|
  10000.times{
    perm = [*0..sets-1].shuffle
    sum = 0
    (0..sets-1).each do |i|
      sum += ss_sets[i][perm.pop]
    end
    max_sum = sum if sum > max_sum
  }
  formatted(max_sum)
end

File.open(ARGV[0]).each_line do |line|
  unless line.size <= 1
    names,products = line.split(';')
    names = names.split(',')
    products = products.split(',')

    unless names.nil? || products.nil?
      ss_collection = names.collect{|name| get_all_ss(name, products)}
    end

    unless ss_collection.empty?
      print get_max_sum(ss_collection)
      puts ""
    end
  end
end
