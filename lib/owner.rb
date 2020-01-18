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
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each do |dog| dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat| cat.mood = "happy"
    end
  end
  
  def sell_pets
    @@all 
  end
  
end