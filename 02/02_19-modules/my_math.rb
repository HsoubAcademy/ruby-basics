module MyMath
    PI = 3.14

    def self.power(n, p=2)
        n ** p
    end

    def self.sqrt(n)
        n ** 0.5
    end
end

puts MyMath::PI
puts MyMath.power(2)
puts MyMath::power(2)