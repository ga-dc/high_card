require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

#creating a deck
def create_deck(ranks, suits)
  deck = []
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      card = {
        suit: suit,
        rank: rank,
        worth: i
      }
      deck << card
    end
  end
  deck.shuffle
end
shuffledDeck = create_deck(ranks, suits)

def dealCards(deck)
  hands = []
  Players.each do |player|
    hand = {
      player: player,
      card: deck.shift
    }
hands << hand
end
end

#find winner
# winner can be found when player 1's card is higher than player 2's card
# divide 52 cards equally among 2 players
# shows both players card
# whoever has the high card wins




binding.pry
