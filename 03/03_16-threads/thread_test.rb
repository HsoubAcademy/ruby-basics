puts 'hi'
t = Thread.new do 
    sleep 0.1
    puts 'inside thread'
end

puts 'outside thread'

t.join