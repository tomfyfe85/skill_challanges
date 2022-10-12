def story1(words)
 word_no = words.split(' ').length.to_f
 
final = word_no * 0.3
return final.to_i
end 
# p story1("shortT short short s s s")