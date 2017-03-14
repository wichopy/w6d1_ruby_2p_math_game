require './user.rb'
require './math.rb'
require './referee.rb'
#Initialize Game
P1 = Player.new(3,0)
P2 = Player.new(3,0)
ref = Referee.new()
Numbers = Numbers.new()

while (P1.lives > 0 && P2.lives > 0)
  if ref.p1 
    puts "Scoreboard--------------"
    puts "    Lives             "
    puts "P1: #{P1.lives}/3  ||  P2: #{P2.lives}/3"
    puts "    Score             "
    puts "P1: #{P1.score}    ||  P2: #{P2.score}  "
    puts "------------------------"
    puts "P1's turn."
    puts "What is #{Numbers.n1} + #{Numbers.n2} ?"
    print ">"
    #Wait for user input.
    user_input = gets
  else
    puts "Scoreboard--------------"
    puts "     Lives             "
    puts "P1: #{P1.lives}/3  ||  P2: #{P2.lives}/3"
    puts "     Score             "
    puts "P1: #{P1.score}    ||  P2: #{P2.score}  "
    puts "------------------------"
    puts "P2's turn."
    puts "What is #{Numbers.n1} + #{Numbers.n2} ?"
    print ">"
    #Wait for user input.
    user_input = gets
  end

  if Numbers.checksum(user_input.chomp.to_i)
    if ref.p1
      P1.score = P1.score + 1
    else
      P2.score = P2.score + 1
    end
  else
    if ref.p1
      P1.lives = P1.lives - 1
    else
      P2.lives = P2.lives - 1
    end
  end

  Numbers.new_rand_pair
  ref.switch_players()
end

if P1.score > P2.score
  puts "Player 1 Wins with a score of #{P1.score}"
else 
  puts "Player 2 Wins with a score of #{P2.score}!"
end

puts "Good Game!"