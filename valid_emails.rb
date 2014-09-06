class EmailAddy
  attr_accessor :address

  def initialize address
    @address = address
  end

  def valid?
    return false unless @address.match /\A[a-zA-Z0-9\+\.\w]+@[a-zA-Z0-9\.\w]+\.[a-zA-Z]+\z/
    true
  end
end

File.open(ARGV[0]).each_line do |line|
  addy = EmailAddy.new(line.chomp)
  puts addy.valid?
end

