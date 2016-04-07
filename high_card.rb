# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
game_deck = []
face_up_on_the_table = []
players = []
input = nil

########## Builds Deck ##########
ranks.length.times do |rank_inc|
  suits.length.times do |suit_inc|
    game_deck.push({rank: ranks[rank_inc], suit: suits[suit_inc]})
  end
end
game_deck.shuffle!

########## Gets Players ##########

until input == "play" do
  puts (players.length.to_s) + " players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  if !(input == "play")
    players.push({name: input, card: nil})
  end
end

puts players

######### Deals a card to each player ##########

players.length.times do |card_num|
  card_dealt = game_deck.shift
  players[card_num][:card] = card_dealt
end
puts players
######### Checks for the high card #########

players.length.times do |card_num|
  face_up_on_the_table[card_num] = players[card_num][:card]
end

face_up_on_the_table.length.times do |card_num|
  trumpiness_array.push(ranks.each_index(face_up_on_the_table[card_num]))
  winning_card = trumpiness_array.max
end
