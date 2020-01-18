class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize (name)
    @name = name
    @owner = owner.name
    @mood = "nervous"
    @@all << self
    owner.cats << self
  end
  
  def self.all
    @@all
  end
  
end