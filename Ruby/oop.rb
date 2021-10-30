
module Dogs 
    def speak(sound) 
        puts sound 
    end 
end

class Dog 
    include Dogs
end 

class Cat 
    include Dogs
end

d = Dog.new()   

puts 'my ancestors' 
puts Dog.ancestors
p '' 
puts Cat.ancestors 



class Doggy 
    def initialize(name) 
        @name = name
    end 

    def speak 
        puts "#{@name} hwhwh" 
    end  

    def name 
        @name 
    end  

    def name=(name) 
        @name = name 
    end 

end

d1 = Doggy.new('sparky') 
puts d1  
puts d1.speak 
puts d1.name  
d1.name = 'snoopy' 
puts d1.name
puts ''
d2 = Doggy.new('Fiddo') 
puts d2
puts d2.speak 


class Try 

    attr_accessor :name, :age 
      
    def initialize(name, age) 
        @name = name 
        @age = age 
    end 

    def speak
        puts "my name is #{@name} my age is #{@age}." 
    end 
end 

d = Try.new('beb', 7) 
 
puts d 
puts d.name 
puts d.age 
puts d.speak 
puts (d.name = 'snoo') 
puts (d.age = 17) 
puts d.speak  



class << self
    puts self.inspect 
end 

