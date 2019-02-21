class Fish
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name)
    @name = name
    self.mood = "nervous"
    @species = "fish"
  end
end
