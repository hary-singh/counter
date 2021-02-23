class Dog
    attr_accessor :name, :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
    end

    # instance method
    def info
        puts " #{@name} has the breed of: #{@breed}"
    end

    #class method
    def self.bark
        puts "Woof!"
    end
end

raja = Dog.new("Raja", "Belgian Shepherd")
rani = Dog.new("Rani", "Siberian Husky")

puts raja.info
puts rani.info

Dog.bark