require_relative 'card'

class Deck
  attr_reader :cards, :count
  def initialize(array)
    @cards = array

  end
  def count
    @cards.length #you can just move this line up there  at initialize (same thing)
  end

end
