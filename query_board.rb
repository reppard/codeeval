class Array
  def setrow(i,x)
    self[i] = self[i].map{|n| x}
  end

  def setcol(j,x)
    self.each{ |n| n[j] = x }
  end

  def queryrow(i)
    puts self[i].inject(:+)
  end

  def querycol(j)
    puts self.collect{|n| n[j]}.inject(:+)
  end

  def exec_dsl(string)
    command = string.split(' ')
    method = command.shift.downcase
    args = command

    work = args.size > 1 ? "self.#{method}(#{args[0]},#{args[1]})" :
                           "self.#{method}(#{args[0]})"
    eval(work)
  end
end

matrix = Array.new(256).map{|x| Array.new(256).map{|x| 0} }

File.open(ARGV[0]).each_line do |line|
  matrix.exec_dsl(line.chomp)
end
