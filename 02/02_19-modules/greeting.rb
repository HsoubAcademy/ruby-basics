module Greetings
    def hi
        puts "Hi"
    end

    def hello
        puts "hello"
    end
end

class User
    extend Greetings
end

muhammad = User.new
muhammad.hi

User.hi