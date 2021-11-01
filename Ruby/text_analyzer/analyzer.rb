# count Lines
text = ""
count_line = 0 
# Argv accept argument from the command liune 
File.open(ARGV[0]).each  do |line|  
    count_line += 1  
    text += line  
end  


puts "number of lines #{count_line}" 
# puts text 


# read entire file into an array 
=begin 
lines = File.readlines("story.txt") 
puts lines_count = lines.size
puts text = lines.join 
=end

# Count characters 
number_of_characters = text.length 
puts "number of Characters #{number_of_characters}" 

# Count chars excluding white spaces  
# gsub (global subsitution) eradicate spaces from text
number_of_characters_without_whitespace = text.gsub(/\s+/, '').length 
puts "number of Charcters without spaces #{number_of_characters_without_whitespace}" 


# Count Words  
# split text into parts by whitspaces 
number_of_words = text.split.length 
puts "number of words #{number_of_words}"  

# Count words using scan   
# its groups all alphanumeric words and return it to count
number_of_words = text.scan(/\w+/).length 
puts "number of words #{number_of_words}"


# Counts Sentences  
# sentence ends with fullstop, QM?, EM!
number_of_sentences = text.split(/\.|\?|!/).length 
puts "number of sentences #{number_of_sentences} " 


# Count number of paragraphs 
number_of_paragraphs = text.split(/\n\n/).length 
puts "number of paragraphs #{number_of_paragraphs}" 


# average number of words per sentence
# average number of sentences per paragrahs
puts "number of words per sentence #{number_of_words/number_of_sentences}" 
puts "number of sentences per paragraph #{number_of_sentences/number_of_paragraphs}" 


# percentage of non-fluff words 
stopwords = %w{the a by on for of are with just but and to the my I has some in} 
words = text.scan(/\w+/)
keywords = words.select { |word| !stopwords.include?(word) } 
percentage = ((keywords.length.to_f / words.length.to_f) * 100 ).to_i 
puts "percentage of good words is #{percentage} %" 



sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)  
#puts sentences
sorted_sentences = sentences.sort_by(&:length)  
# puts sorted_sentences
one_third = sorted_sentences.length / 3  #start cutting, number of elements 
ideal_sentences = sorted_sentences.slice(one_third+1, one_third) 
#puts ideal_sentences
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /\is|are/ } 
puts "Summarey:\n\n" + ideal_sentences.join(".") 
puts "--- END OF ANALYSIS ---"