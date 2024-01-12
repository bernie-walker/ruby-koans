module Animal
  LEGS = 4

  def self.legs
    LEGS
  end


end

class Human
  include Animal
  LEGS = 2

  def self.speak
    "hello"
  end

  def get_legs
    LEGS
  end

  def bloke(name)
    "Hiya #{name}"
  end

  def proxy_to_send(method_name, *args)
    self.send(method_name, *args)
  end

end

human = Human.new

# puts human.get_legs
# puts Human.speak
# puts human.bloke("Mark")
puts human.proxy_to_send(:bloke, "Maximilian")
# puts Animal.legs


def method_with_varargs(*args)
  args
end

# puts method_with_varargs(5, one: 1, two: 2).inspect