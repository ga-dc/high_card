# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
decks = []
players = []

ranks.each do |rank|
  suits.each do |suit|
    decks.push [rank, suit]
  end
end


decks = decks.shuffle


# prompt user to put in name
while true
  puts "Enter a player name: "
  name = gets.chomp
  if name == 'play'
    break
  end
  players.push name
end

# table = [deck_card, deck_card, deck_card]
# make a table
# put cards on each table
# find highest value in rank****
# attach those values
table = []



players.length.times do
  table.push decks.pop
end
