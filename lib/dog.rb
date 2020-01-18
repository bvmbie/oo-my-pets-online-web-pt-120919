class Dog
  attr_accessor :name, :owner
  
  def initialize (name)
    @name = name
    @owner = Owner.new
  end
end