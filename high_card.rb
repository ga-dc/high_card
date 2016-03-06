# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

shuffled = deck.shuffle

def get_players
  puts " players so far. Enter a player name, or type 'play': "
  players = gets.chomp
end
get_players
