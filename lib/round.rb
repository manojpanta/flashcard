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
    ((@right_guesses.count.to_f / @guesses.count.to_f) * 100).to_i
  end

  def start
    header
    play_game
    footer
  end

  def header
    puts "Welcome! You're playing with #{deck.count} cards."
    puts '-------------------------------------------------'
  end

  def play_game
    deck.cards.each do |question|
      puts "This is card number #{guesses.length + 1} out of #{deck.count}."
      puts "Question:#{deck.cards[guesses.length].question}"
      answer = gets.chomp.downcase
      record_guess(answer)
      puts guesses.last.feedback
    end
  end

  def footer
    puts '****** Game Over!!! ******'
    puts "You had #{right_guesses.length} correct guesses out of "\
    "#{guesses.length} for a score of #{percent_correct}%."
  end
end
