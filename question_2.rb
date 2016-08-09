# From within the directory, run the following command:
# irb -r ./question_2.rb

module Question2
  class Card
    attr_accessor :suit, :rank

    def initialize(suit, rank)
      @suit = suit
      @rank = rank
    end

    def weight
      case @rank
      when 'Jack'
        11
      when 'Queen'
        12
      when 'King'
        13
      when 'Ace'
        14
      else
        @rank
      end
    end

    def equals?(card)
      self.weight == card.weight
    end

    def to_s
      "#{@rank} of #{@suit.capitalize}"
    end
  end

  class Deck
    SUITS = %w(spades hearts diamonds clubs)
    RANKS = [*2..10, 'Jack', 'Queen', 'King', 'Ace']

    attr_accessor :cards

    def initialize
      # gets all cards
      @cards = []
      # [].product returns the cartesian product
      SUITS.product(RANKS) do |suit, rank|
        @cards.push Card.new(suit, rank)
      end
    end

    def shuffle
      @cards.shuffle!
    end

    def draw
      # pulls a card
      @cards.shift
    end

    def put_back(card)
      unless @cards.map(&:to_s).include?(card.to_s)
        @cards.unshift(card)
      end

      @cards
    end

    def size
      @cards.length
    end
  end
end
