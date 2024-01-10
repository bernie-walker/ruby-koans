module Animal
  LEGS = 4

  def self.legs
    LEGS
  end


end

class Human
  include Animal
  LEGS = 2

  def get_legs
    LEGS
  end
end

human = Human.new

puts human.get_legs
puts Animal.legs