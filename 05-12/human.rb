class Human
  def initialize(name)
    @name = name
    @alertness= 0.00
  end
  def alertness
    @alertness
  end
  def needs_coffee?
  true
  end
  def has_coffee?
   false   
  end
  def buy(coffee)
    @drink = coffee
  end
  def drink!
    @alertness += 0.33
    @drink.take_sip
  end
end