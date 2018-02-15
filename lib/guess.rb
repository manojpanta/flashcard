class Guess
  attr_reader :response

  def initialize(response, anything)
    @response = response
    @card = anything
  end

  def correct?
    @response == @card.answer.downcase
  end

  def card
    @card
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end
end
