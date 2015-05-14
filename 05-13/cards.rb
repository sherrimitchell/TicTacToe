require 'pry'

module IronYardGames
  class Card

  RANKS = (2..10).to_a + [:J, :Q, :K, :A]
  SUITS = [:diamonds, :clubs, :spades, :hearts]

  RANK_VALUES = {J: 11, Q: 12, K: 13, A: 14}

  # attr_reader :rank
  # attr_writer :rank
  attr_accessor :rank, :suit
  include Comparable

  def initialize(rank=nil, suit=nil)
    @rank = rank || RANKS.sample
    @suit = suit || SUITS.sample
  end

  def value
    val = RANK_VALUES[self.rank]
    val ||= self.rank
  end

  def <=>(other)
    self.value <=> other.value
  end
  end
  def deck
    def initialize(deck)
      @deck = deck
    end
      ranks = (2..10).to_a + [:J, :Q, :K, :A]
      suits = [:diamonds, :clubs, :spades, :hearts]
      CARD = ranks.product.(suits)
      @deck = CARD.map {[x] Card.new(x(0), x(1))}
    def draw(n)
      draw_card
    end
    def peek
    end
    def shuffle
    end
  end

end

binding.pry