class Person
  attr_accessor :age, :name

  def initialize(age, name)
    @name = name
    @age = age
  end

  def self.about
    puts "People are people. We are all human"
  end

  def say_hi
    puts "Hi, name is #{@name} and I am #{@age} years old!"
  end

  def have_birthday
    puts "happy birthday"
    increment_age
  end

  private

  def increment_age
    @age = @age + 1
  end
end

# Person.about

stacey = Person.new(25, "Stacey")
lacey = Person.new(26, "Lacey")

# # stacey.say_hi
# puts stacey.have_birthday
