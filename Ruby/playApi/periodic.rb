require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new 

i = 0
scheduler.every '10s' do 
    puts "this #{i+=1}ths try"
end 

scheduler.join
