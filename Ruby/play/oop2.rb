# Neste Class  

class Drawing  

    def self.give_me_a_circle 
        Circle.new
    end 

    class Circle 
        def who_am_i 
            puts "Iam Circle" 
        end 
    end 

    class Line 
        def who_am_i 
            puts "Iam Line" 
        end  
    end 
end 

b = Drawing.give_me_a_circle  
c = Drawing::Circle.new 
d = Drawing::Line.new
puts b.inspect 
puts b.who_am_i 

puts c.inspect 
puts c.who_am_i 

puts d.who_am_i 



# Scope Of Constants 

PI = 3.14

puts PI.class.ancestors

class Another
    PI = 4
    def cir_of_circle(r) 
        PI * 2 * r 
    end 
end 


puts Another.new.cir_of_circle(5) 
puts Another::PI
puts PI.class



# NameSpacing 

module NumberStuff 

    def self.random 
        rand(1000) 
    end 
end 

module StringStuff 
    def self.random
        (rand(26) + 65).chr
    end 
end 

puts StringStuff.random
puts NumberStuff.random



module YetM 
    class Ruller 
        attr_accessor :length 
    end 
end 


module YetN 
    class Ruller 
        attr_accessor :name 
    end 
end 


a = YetM::Ruller.new 
puts a.length = 20  
puts a.length
b = YetN::Ruller.new 
puts b.name = "555" 
