require './human'

class Coffee
  def initialize(coffee)
    @coffee = coffee
    @sips = 3
    @full = true
    @empty = false
  end
  def full?
   @sips == 3
  end
  def empty?
    @sips == 0
  end
  def take_sip
    @sips = @sips - 1
    # @sips -= 1
  end
end