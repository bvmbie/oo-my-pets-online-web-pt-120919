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
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_cat(name, owner)
    new_cat = Cat.new(name, owner=self)
    new_cat.owner = self
  end
  
  def buy_dog(name)
    Dog.new(name)
    new_dog.owner = self
  end
  
end