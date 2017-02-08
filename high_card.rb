# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []
deck = []


ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck.push( [rank, suit])
  end
end

deck.shuffle!


p deck


def prompt(n)
  players = []
  p "#{players.length} players so far. Enter a player name, or type 'play':"
  players.push([name: n],)

end
