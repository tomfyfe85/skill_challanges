class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0)
    most_common = nil
    most_common_count = 0
    @text.chars.each.with_index do |char, index|
      next unless is_letter?(char)
      #binding.irb
      p "iteration #{index} #{counter[char]} - count  #{char}" 
      counter[char] = (counter[char] || 0) + 1
      if counter[char] > most_common_count
        most_common = char
        most_common_count = counter[char]
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]