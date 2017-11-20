def say_hi(name = "Unknown")
    puts "Hi #{name}"
end

def say(message, as:)
    puts "[#{as}]: #{message}"
end

say 'Hi', as: 'Muhammad'