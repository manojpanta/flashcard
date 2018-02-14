require_relative 'guess'

class Round

attr_reader :deck, :guesses, :right_guesses
  def initialize(deck)
    @deck = deck
    @guesses = []
    @card_count = 0
    @right_guesses = []

  end

  def current_card
    @deck.cards[@card_count]
  end

  def record_guess(answer)
    result = Guess.new(answer, current_card)
    @guesses << result
    @card_count += 1
    if result.correct?
      @right_guesses << result

    end


    result
  end

  def number_correct
    @right_guesses.length
  end

  def percent_correct
    # require 'pry' ; binding.pry
    ((@right_guesses.count.to_f / @guesses.count.to_f) * 100).to_i

  end

end
