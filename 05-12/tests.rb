require 'minitest/autorun'

require './human'
require './coffee'

## This assignment made more sense when I wrote it in the morning.
class CaffeineTest < MiniTest::Test     # Your test sutie
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1
  end

  def test_humans_need_coffee   # Each of these are tests for specific specific things about your code
    randy = Human.new "Randy"
    refute randy.has_coffee?
    assert randy.needs_coffee?
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full?

    sherri.buy tsmf
    sherri.drink!
    assert_in_epsilon sherri.alertness, 0.33, 0.1
    refute tsmf.full?
    refute tsmf.empty?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf

    3.times { trevor.drink! }
    assert tsmf.empty?
    assert trevor.alertness > 0.9
  end
end
# assert - Evalutate to true
# refute - Evaluate to false