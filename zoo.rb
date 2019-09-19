class Cat
    attr_reader :age
    def initialize(name, age)
        @name = name
        @age = age    
    end

    def grow(by)
        @age = age + by
    end

    def say
        "meow meow"
    end

    def eat(food)
        return "yummy" if favorite_food?(food)
    end

    private
    def favorite_food?(food)
        return true if food == "fish"
    end
    
end

class Lion < Cat

    def grow(offset)
        raise "I am dead" if age >= 15
        super
    end

    def mate?(name)
      return true if @name == "gogoli"
    end

end

l = Lion.new("milad", 9)
l.grow(10)
puts l.age 
# c = Cat.new("zoe", 4)
# c.grow(2)
# p c.age

