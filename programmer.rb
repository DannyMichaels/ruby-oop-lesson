require "./person"

class Programmer < Person
  attr_accessor :github, :website, :languages

  def initialize(name, age, options)
    super(name, age)
    setup(options)
  end

  def setup(options)
    @github = options[:github]
    @website = options[:website]
    @languages = options[:languages]
  end

  def say_hi
    super
    puts "And I love to program!"
  end

  def build_resume
    "#{@name}, github: #{@github}, website: #{@website}, languages: #{@languages.join(", ")}"
  end
end

Programmer.about

programmer = Programmer.new("Tracey", 30, {
  github: "tracey",
  website: "example.com",
  languages: ["js", "ruby", "kotlin"],
})
programmer2 = Programmer.new("", 30, {
  github: "tracey",
  website: "example.com",
  languages: ["java", "ruby", "kotlin"],
})
programmer.name
programmer.age
programmer.say_hi
programmer.have_birthday
programmer.build_resume
