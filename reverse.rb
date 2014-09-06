def reverse_sentence(input)
  word_array = input.split(" ")
  word_array.reverse.join(" ")
end

def empty_line?(line)
  line.gsub(/\s+/,'').empty?
end

sentences = File.open(ARGV[0],'r')

sentences.each do |sentence|
  puts reverse_sentence(sentence).chomp if !empty_line?(sentence)
end

