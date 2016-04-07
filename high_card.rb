# Use these two arrays to generate a deck of cards
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
  suits = ["hearts", "spades", "diamonds", "clubs"]

  deck = ranks.product(suits).shuffle

#   deck = []
#
#   ranks.each do |rank|
#     suits.each do |suit|
#     deck << [rank, suit]
#   end
# end


players = []
puts players.length.to_s + "Player so far"
puts "Enter a player name or type play: "
player = gets.chomp

while player != "play" do
  players << player
  puts "Enter a player name or type play: "
  player = gets.chomp
end


players_with_cards = players.map do |player|
  {name: player, card: nil}
end

players_with_cards.each do |player|
  card = deck.pop
  player[:card] = card
end


puts players_with_cards.inspect

high_card_value_player = players_with_cards.max do |player|
  player_rank = ranks.index(player[:card][0])
  puts player_rank
  player_rank
end

puts high_card_value_player[:name] + " has won with " + high_card_value_player[:card].to_s
