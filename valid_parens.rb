KEY = {
  "{" => "}",
  "[" => "]",
  "(" => ")"}


def valid?(string)
  arr = string.split('')
  return "False" unless arr.first == "(" and arr.last == ")"
  unless arr.empty?
    return "False" unless KEY[arr.shift] == arr.pop
  end
  "True"
end

File.open(ARGV[0]).each_line do |line|
    puts valid?(line.chomp)
end
