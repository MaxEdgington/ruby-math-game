class Player
  attr_accessor :name, :lives

  def initialize(name)
    @lives = 3
    @name = name
  end

  def lose_life
    @lives -=1
  end
end