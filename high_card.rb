# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
player_hand = []

ranks.each_with_index do |ranks, index|
  suits.each do |suit|
    deck.push([ranks, suit])
  end
end

# * Shuffle the deck. It would look something like this...
deck.shuffle

# 2. Collect an array of player names by prompting:
while (players != 'play')
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  new_player = gets.chomp.to_s
  players.push(new_player)

  break if (players == 'play')
  players.push(new_player)
end

#
