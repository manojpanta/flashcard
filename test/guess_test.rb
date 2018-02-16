require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class CardTest1 < MiniTest::Test

  def setup
    @card1 = Card.new('What is the capital of Alaska?', 'Juneau')
    @guess1 = Guess.new('Juneau', @card1)
    @card2 = Card.new('Which planet is closest to the sun?', 'Mercury')
    @guess2 = Guess.new('Saturn', @card2)
  end

  def test_if_it_exists
    assert_equal @card1, @guess1.card
    assert_equal @card2, @guess2.card
  end

  def test_response_working
    assert_equal 'Juneau', @guess1.response
    assert_equal 'Saturn', @guess2.response
  end

  def test_if_the_guess_is_right
    assert_equal true , @guess1.correct?
    assert_equal false , @guess2.correct?
  end

  def test_feedback
    assert_equal 'Correct!', @guess1.feedback
    assert_equal 'Incorrect.', @guess2.feedback
  end
end
