class Player
  def initialize (name)
    @score = 3
    @name = name
  end

  attr_accessor :score
  attr_accessor :name

  def subtract_score
    @score -= 1
  end
end