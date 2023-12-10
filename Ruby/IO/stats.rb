# Statistics about files 
hash = Dir.glob('./**/*').inject({}) do |hsh, fname| 
	file_ext = File.extname(fname).downcase[1..-1] # extract the extinsion name 
	hsh[file_ext] ||= [0, 0] # for each file extension create [count, size] if not exists 
	hsh[file_ext][0] += 1  # increase count by one 
	hsh[file_ext][1] = File.size(fname)  
	hsh
end 

# wriet stat to file 

File.open('file_stats.txt', 'w') do |f| 
	hash.each do |ext, (count, total_size)| 
		line = "#{ext}\t#{count}\t#{total_size}" 
		f.puts line 
		puts line 
	end
end 
