class Owner
  
  attr_reader :name, :species
  attr_accessor 
  @@all = []
  
  
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def cats
    @cats
  end
  
  def dogs 
    @dogs
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
  
  # owner should be able to buy and sell a pet, which will change the pet's mood
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    new_cat.owner = self
  end
  
  def buy_dog(name)
    Dog.new(name)
    new_dog.owner = self
  end
  
  
  # An owner should have the ability to walk all their dogs or feed all their cats, which will change the mood of all of their pets of that type to "happy"
  
end