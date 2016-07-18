# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

##############
###Task 1
###############
deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck << [rank, suit]
  end
end

shuffled_deck = deck.shuffle
puts shuffled_deck.inspect

##############
###Task 2
###############
i = 0
puts players.length.to_s + " players so far. Enter a player name, or type 'play'"
response = gets.chomp

while response
  if response != "play"
    players << {"player_name": response, "player_card": []}
    puts players.length.to_s + " players so far. Enter a player name, or type 'play'"
    response = gets.chomp
  elsif response == "play"
    players.each do |player|
      player[:player_card] = shuffled_deck[i]
      i += 1
    end
    break
  end
end

puts players.inspect

def get_winner players
  players.each do |player|
    puts player[:player_card][0]
  end
end


get_winner players

##############
###Task 3
###############
# 4. Find the highest card score dealt (Aces high).
