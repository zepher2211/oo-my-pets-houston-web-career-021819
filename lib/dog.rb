class Dog
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name)
    @name = name
    self.mood = "nervous"
    @species = "dog"
  end

  def walk_dogs
      self.mood = "happy"
  end
end
