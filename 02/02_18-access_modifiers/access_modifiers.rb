class ParentClass
    def the_public_method
        method1
    end

    private

    def name=(value)
        puts "name= has been called with #{value}"
    end

    def method1
        puts "The private has been called"
    end
end

class ChildClass < ParentClass
    def test
        self.name= "anything"
    end
end

ChildClass.new.test