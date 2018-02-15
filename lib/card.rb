class Card
  attr_reader :question, :answer

  def initialize(question, a)
    @answer = a
    @question = question
  end

end
