require 'fish.rb'
require 'dog.rb'
require 'cat.rb'
require 'pry'


class Owner
    attr_accessor :pets, :name, :mood
    attr_reader :species

    @@all = []

    def initialize(name)
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
      @species = "human"
      self.name = name
    end

    def buy_cat(name)
      @pets[:cats] << Cat.new(name)
    end

    def buy_fish(name)
      @pets[:fishes] << Fish.new(name)
    end

    def buy_dog(name)
      @pets[:dogs] << Dog.new(name)
    end

    def self.all
        @@all
    end

    def self.count
        @@all.count
    end

    def self.reset_all
        @@all.clear
    end

    def say_species
      "I am a #{@species}."
    end

    def walk_dogs
        @pets[:dogs].each do |pet|
          pet.mood = "happy"
        end
    end

    def play_with_cats
      @pets[:cats].each do |pet|
        pet.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |pet|
        pet.mood = "happy"
      end
    end

    def sell_pets
      @pets[:fishes].each do |pet|
        pet.mood = "nervous"
      end
      @pets[:dogs].each do |pet|
        pet.mood = "nervous"
      end
      @pets[:cats].each do |pet|
        pet.mood = "nervous"
      end
      @pets[:cats].clear
      @pets[:dogs].clear
      @pets[:fishes].clear
    end

    def list_pets
        "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end
end
