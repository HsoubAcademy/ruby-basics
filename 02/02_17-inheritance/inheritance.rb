class Animal
    def make_sound
        raise 'Cannot call make_sound on Animal, use one of its descendents'
    end

    def walk
        puts "#{self.class.name} is walking"
    end
end

class Dog < Animal
    def make_sound
        puts "Woof!"
    end
end

class Cat < Animal
    def make_sound
        puts "Meow!"
    end

    def walk
        super
        puts "Tail is moving too"
    end
end

max = Dog.new
max.walk
max.make_sound

bella = Cat.new
bella.walk