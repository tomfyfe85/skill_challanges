
def get_most_common_letter(text)
  p "counter = hash.new(0) #{counter = Hash.new(0)}"
  
  text.delete(' !,').chars.each do |char|
    "char #{char}"
    
    #  counter[char] += 1
  "counter[char] +1 #{counter[char] += 1}"
 "counter[char] #{counter[char]}"
  end
   
  counter.to_a.sort_by {|k, v| v}.reverse[0][0]
end
p get_most_common_letter("the roof, the roof, the roof is on fire!")
#

# def get_most_common_letter(text)
#   counter = Hash.new(0)
#   text.chars.each do |char|
#     counter[char] += 1
#   end
#   counter.to_a.sort_by { |k, v| v }[0][0]
# end
# p get_most_common_letter("the roof, the roof, the roof is on fire!")