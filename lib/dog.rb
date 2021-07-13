class Dog

  @@DOGS = []

  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, mood="nervous", owner)
    @name = name
    @mood = mood
    @owner = owner
    @@DOGS << self
  end

  def self.all 
    @@DOGS
  end


end