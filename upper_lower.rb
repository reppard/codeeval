class String
  def case
    self.match(/[A-Z]/) != nil ? 'upper' : 'lower'
  end
end

class Float
  def pretty_string
    if self.to_s.split('.').last.length >= 2
      self.round(2).to_s
    else
      "#{self.round(2).to_s}0"
    end
  end
end

File.open(ARGV[0]).each_line { |line|
  line = line.chomp.split('')
  size = line.size

  lower = (line.select{|x| x.case == 'lower'}.size.to_f / size.to_f * 100).to_f
  upper = (line.select{|x| x.case == 'upper'}.size.to_f / size.to_f * 100).to_f

  puts "lowercase: #{lower.pretty_string} uppercase: #{upper.pretty_string}"
}
