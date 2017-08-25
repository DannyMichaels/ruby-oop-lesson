class Programmer < Person
  attr_accessor :github, :website
  attr_reader :languages

  def initialize(name, age, options)
    super(name, age)
    setup(options)
  end

  def say_hi
    super
    puts 'And I love to program!'
  end

  def build_resume
    "#{name}, github: #{github}, website: #{website}, languages: #{languages.join(', ')}"
  end

  private

  attr_writer :languages

  def setup(options)
    self.github = options[:github]
    self.website = options[:website]
    self.languages = options[:languages]
  end

end

## sandbox

Programmer.about

programmer = Programmer.new('Tracey', 30,
  github: 'tracey',
  website: 'example.com',
  languages: [:js, :ruby, :kotlin]
)
programmer.name
programmer.age
programmer.say_hi
programmer.have_birthday
programmer.build_resume
