class Person
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def add_age(num)
        @age += num
    end


end

bob = Person.new("Bob", 30)
p bob.name
p bob.age

bob.add_age(10)
p bob.age