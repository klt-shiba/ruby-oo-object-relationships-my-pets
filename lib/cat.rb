class Cat

  @@CATS = []

  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, mood="nervous", owner)
    @name = name
    @mood = mood
    @owner = owner
    @@CATS << self
  end

  def self.all 
    @@CATS
  end


end