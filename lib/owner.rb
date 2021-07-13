class Owner
  
  @@OWNERS = []
  attr_reader :species, :name

  def initialize(name, species="human")
    @name = name
    @species = species
    @@OWNERS  << self
  end

  def name
    @name
  end

  def self.count
    @@OWNERS.length
  end
  
  def self.all
    @@OWNERS
  end

  def self.reset_all
    @@OWNERS.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.filter do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.filter do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    name = Cat.new(name, mood="nervous", self)
  end

  def buy_dog(name)
    name = Dog.new(name, mood="nervous", self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
  def sell_pets
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
  def list_pets
    no_dogs = self.dogs.length
    no_cats = self.cats.length
    "I have #{no_dogs} dog(s), and #{no_cats} cat(s)."
  end
end