require './user.rb'
require './math.rb'
#Initialize Game

P1 = Player.new(3,0)
P2 = Player.new(3,0)
Numbers = Numbers.new()

while (P1.lives > 0 || P2.lives > 0)
  puts "What is #{Numbers.n1} + #{Numbers.n2} ?"
  user_input = gets

  puts "User entered #{user_input.chomp}"

  if Numbers.checksum(user_input.chomp.to_i)
    puts "Inside check"
    Numbers.new_rand_pair
  end

end
