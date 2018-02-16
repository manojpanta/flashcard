require './lib/guess'
require './lib/round'
require './lib/card'
require './lib/deck'

array = [Card.new('What is your name ?', 'Manoj'),
         Card.new('Where are you from?', 'Nepal'),
         Card.new('Really?', 'Yes'),
         Card.new('When did you move to usa then?', '2 years ago'),
         Card.new('How do you like it here?', 'Its awesome!!')
        ]

deck = Deck.new(array)
round = Round.new(deck)

round.start
