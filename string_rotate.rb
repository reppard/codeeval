#lines = ["Hello,lloHe",
#         "Basefont,tBasefon"]

class Array
  def rotation_of?(array)
    array = array
    self.size.times do
      return "True" if self == array.rotate!
    end
      return "False"
  end
end

#lines.each do |line|
File.open(ARGV[0]).each_line do |line|
  a,b = line.chomp.split(',').collect{ |string| string.split('') }
  puts b.rotation_of?(a)
end
