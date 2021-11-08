def test(name) 
    raise ArgumentError, "no arg supplied" if name.empty? 
end 


#puts test("") 


## Create your own exceptions 
class NoFuckingShit < RuntimeError 
end 

class Test2 
    def initialize(name) 
        raise NoFuckingShit, "where the fucking name" if name.empty? 
    end 
end 

#puts t = Test2.new('')  


=begin 
# Handling Excption
begin
    puts 10 / 0
rescue 
    puts "you caused an error" 
    puts 10 / 1
end





begin 
    puts 10 / 0

rescue => e 
    puts "fuck your errors  -> #{e.class} "
end 



## Catch and throw 
catch(:finish) do 
    100.times do |x| 
        x = rand(100) 
        throw :finish if x==23
    end 

    puts "finish" 
end 

=end
# Equal 
def generate_random_number_except_123
  x = rand(1000)
  throw :finish if x > 123 && x < 200
end
catch(:finish) do
  1000.times { generate_random_number_except_123 }
  puts "Generated 1000 random numbers without generating 123!"
end