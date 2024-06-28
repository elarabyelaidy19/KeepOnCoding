def rubybash 
    total_lines = `wc -l file.txt`.to_i
    half = total_lines.div 2 
    print_half = `head -n #{half} file.txt`
end 

def file_name_length 
    `ls`.lines.map { |l| l.strip.split('.').first.length }
end 



# puts rubybash
puts file_name_length   


