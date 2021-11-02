class GoodDog 
    @@number_of_dogs = 0 

    def initialize 
        @@number_of_dogs += 1 
    end  

    def self.total_number_of_dogs
        @@number_of_dogs 
    end 
end 
 
puts GoodDog.total_number_of_dogs

d1 = GoodDog.new 
d2 = GoodDog.new 

puts GoodDog.total_number_of_dogs 




class Dog 
    DOG_YEAR = 7 
    attr_accessor :name, :age
    def initialize(n, a) 
        self.name = n 
        self.age =  a * DOG_YEAR
    end 

    def to_s 
        puts "my name is #{name} and my age is #{age}" 
    end 
end 

sparky = Dog.new('sparky', 3) 
puts sparky.age 
puts sparky.to_s #  
puts sparky
puts sparky.inspect # == p sparaky 

# to_s  

arr =  [1,2,3,4] 
puts arr 
x = 5 
puts x 
puts "the #{arr} does not include #{x}" 



class BadDog 

    attr_accessor :name, :age, :height
    def initialize(name, age, height) 
        self.name = name 
        self.age = age 
        self.height = height 
    end 

    def change_inf(name, age,height) 
        self.name = name 
        self.age = age
        self.height = height 
    end 

    def info 
        puts "my name is #{self.name} my age is #{self.age} and my heigh is #{self.height} inches" 
    end 

    def who_am_i 
        self
    end 
end  


b = BadDog.new('snoop', 3, 14) 
puts b 
puts b.who_am_i.inspect
puts b.info 
 


class Mycar 

    attr_accessor :color, :model
     
    def initialize(color, model) 
        @color = color 
        @model = model
    end 


    def self.distance(miles, gas) 
        puts "#{miles / gas} " 
    end  

    def to_s 
        puts "my color is #{self.color} and model #{self.model}" 
    end 
end  

puts Mycar.distance(30,15) 

c = Mycar.new("red", "toyota") 
puts c