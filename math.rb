class Numbers
  attr_accessor :n1, :n2
  def  initialize ()
    @n1 = rand(0...20)
    @n2 = rand(0...20)
  end

  def new_rand_pair
    self.n1 = rand(0...20)
    self.n2 = rand(0...20)
    return nil
    # puts "#{n1} #{n2}"
  end

  def checksum(user_answer)
    return user_answer == self.n1 + self.n2
  end
end


#Testing

# number = Numbers.new()

# print number.n1.to_s + "  "
# puts number.n2

# puts number.checksum(30)

# puts number.new_rand_pair

# print number.n1.to_s + "  "
# puts number.n2

# puts number.new_rand_pair
# print number.n1.to_s + "  "
# puts number.n2
# puts number.new_rand_pair

# print number.n1.to_s + "  "
# puts number.n2
# puts number.new_rand_pair

# print number.n1.to_s + "  "
# puts number.n2
# puts number.new_rand_pair

# print number.n1.to_s + "  "
# puts number.n2

# puts number.checksum(number.n1+number.n2)