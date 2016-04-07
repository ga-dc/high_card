suits = ["spades", "clubs", "hearts", "diamonds"]
ranks = [2,3,4,5,6,7,8,9,10, "J", "Q", "K", "A"]
deck = ranks.product(suits).shuffle
# deck = []
# ranks.each do |rank|
#   suits.each do |suit|
#     deck << [rank, suit]
#   end
# end
players = []
puts players.length.to_s + "Players so Far"
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
end

winners = players_with_cards.select do |player|
  player[:card][0]  == high_card_value_player[:card][0]
end

puts high_card_value_player[:name] + " has won with " + high_card_value_player[:card].to_s

if winners.length > 1
  puts "just kidding was a tie"
end
