class Animal 
     

    def speak 
        "Arf!" 
    end  

    def initialize  
        puts "Hello" 
    end 
end 

class Dog < Animal 
    attr_accessor :name 

    def initialize(name) 
        @name = name 
    
    end  
    # Overriding the superclass    
    def speak 
        puts "#{self.name} says Arf!" 
    end  


end 

class Cat < Animal 
    def speak 
        super + "super" 
    end 

end 

d = Dog.new('sparky')
puts d.speak

c = Cat.new 
puts c.speak 



class MySuper  
    attr_accessor :name
    def initialize(name) 
        @name = name 
    end 
end 

class MySub < MySuper

    def initialize(color)  
        # will pass the color arg to init super class and inovke it 
        super(color)
        @color = color 
    end 
end 

m = MySub.new("a7a")
puts m.inspect  
# => #<MySub:0x000055e22eaed470 @name="a7a", @color="a7a"> 




## Modules 

module Swimable 
    def swim 
        "Iam swim" 
    end 
end

class Dogs 
    include Swimable 
end 

class Cats 
end

class Fish 
    include Swimable 
end 

d = Dogs.new 
puts d.swim
f= Fish.new 
puts f.swim 
c = Cats.new 
# puts c.swim 
 



module Walkable  
    def walk 
        "iam walk" 
    end 
end 

module Climbable 
    def climb 
        "iam climp" 
    end 
end 

module Table 
    def table 
        "iam table" 
    end 
end  

class A7a 
    include Walkable 
end 

class Any < A7a 
    include Climbable  
    include Swimable
    def speak 
        "iam speak" 
    end 
end 

puts Any.ancestors 
fido = Any.new 
puts fido.speak 
puts fido.climb 





module Mamma
  class Dogies
    def speak(sound)
      p "#{sound}"
    end
  end

  class Kitties
    def say_name(name)
      p "#{name}"
    end
  end

  def self.sum_out_of_places(n) 
    n ** 2 
  end 
end


buddy = Mamma::Dogies.new
kitty = Mamma::Kitties.new
buddy.speak('Arf!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"
puts value = Mamma::sum_out_of_places(3)