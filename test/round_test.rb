require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/card'
require './lib/deck'
# require './lib/guess'

class RoundTest < MiniTest::Test

  def setup
    @card11 = Card.new("What is the capital of Alaska?", "Juneau")
    @card22 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    @deck1 = Deck.new([@card11, @card22])
    @round = Round.new(@deck1)
  end

  def test_deck
    assert_equal @deck1, @round.deck
  end


  def test_guesses_if_starts_nil
    assert_equal [], @round.guesses
  end

  def test_current_card_manjnn

    assert_equal @card11, @round.current_card
  end

  def test_record_guessbhjbj
    assert_equal @round.guesses, @round.record_guess("Juneau")
  end

  def test_count_guesses
    @round.record_guess("Juneau")

    assert_equal 1, @round.guesses.count
  end

  def test_first_feedback
    skip

    assert_equal "Correct!", @round.guesses.first.feedback
  end

  def test_number_correct
    skip
    assert_equal 1, @round.number_correct
  end

  def test_current_card
    # skip
    assert_equal @card22, @round.current_card
  end

  def test_record_guess
    skip
    @round.record_guess("Juneau")
    assert_equal @round.guesses, @round.record_guess("2")
  end

  def test_now_count_is_2
    skip
    @round.record_guess("Juneau")
    @round.record_guess("2")
    assert_equal 2, @round.guesses.count

  end

  def test_last_feedback
    skip
    @round.record_guess("Juneau")
    @round.record_guess("2")
    assert_equal "Incorrect",@round.guesses.last.feedback
  end

  def test_no_of_correct_guesses
    skip
    @round.record_guess("Juneau")
    @round.record_guess("2")
    assert_equal 1, @round.number_correct
  end

  def test_rate_ofcorrectness
    skip
    @round.record_guess("Juneau")
    @round.record_guess("2")
    assert_equal 50, round.percent_correct
  end
end
