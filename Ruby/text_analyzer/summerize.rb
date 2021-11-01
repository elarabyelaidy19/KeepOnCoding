text = %q{
Ruby is a great programming language. It is object oriented
and has many groovy features. Some people don't like it, but that's
not our problem! It's easy to learn. It's great. To learn more about Ruby,
visit the official Ruby website today.
}  

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)  
#puts sentences
sorted_sentences = sentences.sort_by(&:length)  
# puts sorted_sentences
one_third = sorted_sentences.length / 3  #start cutting, number of elements 
ideal_sentences = sorted_sentences.slice(one_third+1, one_third) 
#puts ideal_sentences
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /\is|are/ } 
puts ideal_sentences 
