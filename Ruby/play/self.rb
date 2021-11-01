class Tset  

    def te 
        self
    end 
end 

t = Tset.new 
puts (t.te == t) 
puts t.inspect  
 

class Self 
    puts self 
end 

puts Self.class
 

class Car 

    attr_accessor :year, :color, :model
    def initialize(year, color, model) 
        @year = year 
        @color = color 
        @model = model 
        @current_speed = 0 
    end 


    def speed(number) 
        @current_speed += number 
    end 

    def brake(number) 
        @current_speed -= number 
    end 

    def current_speed 
        puts @current_speed 
    end 

    def shut_down 
        @current_speed = 0 
    end 
end 

c1 = Car.new(1222, 'red', 'fiat') 

puts c1 
puts c1.year 
puts c1.speed(20) 
puts c1.current_speed 

puts c1.speed(69) 
puts c1.current_speed 

puts c1.brake(4)