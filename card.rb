ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks.rotate!(1)
puts # ranks 2 - A
# combine the decks using product
full_deck = ranks.product(suits)
# shuffle the decks using shuffle function
card_deck = full_deck.shuffle()
puts card_deck # shuffled deck

# set a players array to nil
players = []
# set input = gets.chomp
  # take player name input
input = gets.chomp
# while input is not 'play'
while input != 'play' do
  # shovel names to players array
  players << { name: input } # creating a hash in order to hold values
  input = gets.chomp
# until 'play' is received
end
puts "#{players.length} players are in this game."

# winners = []
winners = []

# while winners.length != 1
while winners.length != 1 do
# Deal out cards by shifting out of combined_shuffled_cards
  players.each do |player|
# Change the player array with map! { name: player [:name], card: shuffled }
    player[:card] << card_deck.shift
  end
# Who is the highest rank card
  ranks.reverse!
# Clear winners array = []
  winners = []
# for each rank
for num in ranks do
  # for each person
  for player in players do
    # if player card = rank
    if player[:card] == num
      # winners << player
      winners << player
    # end
  end
end
end
  # if winners.length > 0
  # if winners.length > 0
  # break
  # end
  # is it a tie?
  # if winners.length != 1
    # puts redrawing message, due to tie
  # end end
end
