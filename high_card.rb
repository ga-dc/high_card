# Use these two arrays to generate a deck of cards.

def card_deck
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards[]

values.each_with_index do |v, i|
    suits.each do |s|
      deck.push ({
        score: i,
        value: v,
        suit: s,
        })
      end
    end
    return cards.shuffle
  end

cards.card_deck
players = []
