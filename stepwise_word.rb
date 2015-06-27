file_name = ARGV[0] || "stepwise_word.txt"

class String
  def get_longest_word
    words = self.split(' ')
    longest = ''
    
    words.each do |word|
      longest = word if word.length > longest.length
    end

    longest
  end

  def to_stepwise
    letters = self.split('')

    letters.each_with_index do |letter,i|
      stars = ''
      (i).times do
        stars << '*'
      end
      letters[i] = "#{stars}#{letter}"
    end
    letters.join(' ')
  end
end

File.open(file_name).each_line do |line|
  word = line.get_longest_word

  puts word.to_stepwise
end
