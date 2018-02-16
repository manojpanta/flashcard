require_relative 'guess'

class Round

attr_reader :deck, :guesses, :right_guesses
  def initialize(deck)
    @deck = deck
    @guesses = []
    @card_count = 0
  end

  def current_card
    @deck.cards[@card_count]
  end

  def record_guess(answer)
    result = Guess.new(answer, current_card)
    @guesses << result
    @card_count += 1
    result
  end

  def right_guesses
      @guesses.find_all do |guess|
        if guess.correct?
        guess
        end
      end.count
  end

  def percent_correct
    ((right_guesses.to_f / @guesses.count.to_f) * 100).to_i
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
    puts "You had #{right_guesses} correct guesses out of "\
    "#{guesses.length} for a score of #{percent_correct}%."
  end
end
