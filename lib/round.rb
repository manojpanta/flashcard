require_relative 'guess'

class Round

attr_reader :deck, :guesses
  def initialize(deck)
    @deck = deck
    @guesses = []
    @card_count = 0

  end

  def current_card
    @deck.cards[@card_count]
  end

  def record_guess(answer)
    # require 'pry'; binding.pry
    @guesses << answer
    @card_count += 1
  end

  def feedback
    return "Correct!" if @guesses.first == @deck.cards[0].answer
  end





  # end







end
