class Person
    attr_accessor :name, :age   # able to set the values of name and age
    # attr_writer :name, :age     # able to only write to the values
    # attr_reader :name, :age     # able to only read to the values
    # # you can only use one of these accesses to the values

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