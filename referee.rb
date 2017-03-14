class Referee

  attr_accessor :p1, :p2

  #Player 1 always first.
  def initialize()
    @p1 = true
    @p2 = false
  end

  def switch_players()
    if @p1
      @p1 = false
      @p2 = true
    else
      @p1 = true
      @p2 = false
    end
  end
end

#Test code

# P1 = true
# P2 = false
# ref = Referee.new()

# puts ref.p1
# puts ref.p2

# ref.switch_players

# puts ref.p1
# puts ref.p2
