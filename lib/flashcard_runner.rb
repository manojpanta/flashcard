require './lib/guess'
require './lib/round'
require './lib/card'
require './lib/deck'

array = [card1 = Card.new('What is your name ?', 'Manoj),
        card2 = Card.new('Where are you from?', 'Nepal'),
        card3 = Card.new('Really?', 'Yes'),
        card4 = Card.new('When did you move to usa then?', '2 years ago'),
        card5 = Card.new('How do you like it here?', 'Its awesome!!')]

deck = Deck.new(array)
round = Round.new(deck)

round.start
