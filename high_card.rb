# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

##############
###Task 1
###############
deck = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck << [rank, suit, index]
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
    players << {"player_name": response, "player_card": [], "card_index": nil}
    puts players.length.to_s + " players so far. Enter a player name, or type 'play'"
    response = gets.chomp
  elsif response == "play"
    players.each do |player|
      player[:player_card] = shuffled_deck[i]
      player[:player_index] = shuffled_deck[i][2]
      i += 1
    end
    break
  end
end

puts players.inspect



##############
###Task 3
###############
# 4. Find the highest card score dealt (Aces high).


#################ENDING HW ASSIGNMENT HERE. Spent too long trying to figure out how to return the player object with the highest card number
