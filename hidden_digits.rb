get_hidden =  {
  "a" => "0",
  "b" => "1",
  "c" => "2",
  "d" => "3",
  "e" => "4",
  "f" => "5",
  "g" => "6",
  "h" => "7",
  "i" => "8",
  "j" => "9",
  "0" => "0",
  "1" => "1",
  "2" => "2",
  "3" => "3",
  "4" => "4",
  "5" => "5",
  "6" => "6",
  "7" => "7",
  "8" => "8",
  "9" => "9"
}

File.open('hidden_digits.txt').each_line do |line|
  chars = line.gsub(/[^a-j0-9]/,'')
  string = chars.split('').collect{ |char| get_hidden[char] }.join
  puts string.empty? ? 'NONE' : string
end
