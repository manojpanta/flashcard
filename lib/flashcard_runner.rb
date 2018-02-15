require './lib/guess'
require './lib/round'
require './lib/card'
require './lib/deck'
# require 'pry'
array = [

card1 = Card.new("what is my name", "Manoj"),
card2 = Card.new("where am i from?", "Nepal"),
card3 = Card.new("really?", "Yes")
]

deck1 = Deck.new(array)
round1 = Round.new(deck1)

round1.start
