class AllVowels 
    include Enumerable
  VOWELS = %w{a e i o u}
  def each
    VOWELS.each { |v| yield v }
  end
end


x = AllVowels.new 

x.each { |x| puts ("x" + x) } 

x.collect {|c| c + "x"} 
x.detect { |c| c > "j" } 




class Song 
    include Comparable 

    attr_accessor :length 

    def <=>(other) 
        @length <=> other.length
    end 

    def initialize(song, length) 
        @song = song 
        @length = length 
    end 

end 

a = Song.new("tettetet", 230) 
c = Song.new("tettetet", 250)   
b = Song.new("tettetet", 20) 


puts a > b 
puts b < c 
puts a == c  
puts a.between?(b,c) 
