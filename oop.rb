# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string


class Unicorn
    attr_accessor :name, :color
  
    def initialize(name)
      @name = name
      @color = "silver"
    end
  
    def say(message)
      "*~* #{message} *~*"
    end
  end
unicorn1 = Unicorn.new("Tree Lover")
p unicorn1.say("Suh my dude")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_accessor :name, :pet, :thirsty
  
    def initialize(name, pet="bat")
      @name = name
      @pet = pet
      @thirsty = true
    end
  
    def drink
      @thirsty = false
    end
  end

vamp1 = Vampire.new("Strahd von Zarovich")
p vamp1
vamp2 = Vampire.new("Edward", "No pet")
p vamp2.drink

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_accessor :name, :rider, :color, :is_hungry
  
    def initialize(name, rider, color)
      @name = name
      @rider = rider
      @color = color
      @is_hungry = true
      @eat_count = 0
    end
  
    def eat
      @eat_count += 1
      @is_hungry = false if @eat_count >= 4
    end
  end

dragon1 = Dragon.new("Smaug", "Bilbo", "Red")
p dragon1
dragon1.eat
dragon1.eat
p dragon1
dragon1.eat
dragon1.eat
p dragon1.is_hungry


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_accessor :name, :disposition, :age, :has_ring
  
    def initialize(name, disposition)
      @name = name
      @disposition = disposition
      @age = 0
      @has_ring = name == "Frodo"
    end
  
    def celebrate_birthday
      @age += 1
    end
  
    def is_adult
      @age >= 33
    end
  
    def is_old
      @age >= 101
    end
  end

hobbit1 = Hobbit.new("Peregrin", "A fool of a Took")
p hobbit1
hobbit2 = Hobbit.new("Frodo", "Strong")
p hobbit2
101.times do
    hobbit2.celebrate_birthday
end
p hobbit2.is_old