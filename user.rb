class Player
  attr_accessor :lives, :score

  def initialize(lives, score)
    @lives = lives
    @score = score
  end
end



#Test code::
# Jon = Player.new(3,0)

# puts Jon.lives
# puts Jon.score
# Jon.score = Jon.score+1
# puts Jon.score

# Jon.lives = Jon.lives - 1

# puts Jon.lives

