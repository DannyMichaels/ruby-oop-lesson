class Person
  attr_reader :name, :age

  def self.about
    puts 'People are people. We are all human'
  end

  def initialize(name, age)
    self.name = name
    self.age = age
  end

  def say_hi
    puts "Hi, name is #{name} and I am #{age} years old!"
  end

  def have_birthday
    puts 'happy birthday'
    increment_age
  end

  private

  attr_writer :name, :age

  def increment_age
    self.age = age + 1
  end
end

## sandbox

# Person.about
#
# person = Person.new('Stacey', 25)
# person.name
# person.age
# person.say_hi
# person.have_birthday
