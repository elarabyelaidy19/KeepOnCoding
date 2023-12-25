require 'json' 
require 'objspace'

GC.disable 


def old?(obj) 
    !!JSON.parse(ObjectSpace.dump(obj))['flags']['old']
end 


def count_gc_until_old(full_mark) 
    gc_count = 0
    obj = Object.new 

    while !old?(obj) 

        GC.start(full_mark: full_mark) 
        gc_count += 1 
    end 

    gc_count
end 

# major
puts count_gc_until_old(true) 

# minor
puts count_gc_until_old(false)