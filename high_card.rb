require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []


suits.each do |suit|
  ranks.each do |rank|
    deck << [rank, suit]
  end
end

deck.shuffle!

loop do
  puts "#{players.length} Players currently. Enter a player name or type 'play' to begin"
  player_name = gets.chomp
  if player_name != 'play'
    players << {name: player_name}
  end
break if player_name == 'play'
end

players.each do |player|
  random_card = deck[rand(deck.length - 1)]
  player[:card] = random_card
end



  card_values = players.map{ |player| ranks.find_index(player[:card][0])}
  high_value = card_values.max
  winner = players.select{ |player| ranks.find_index(player[:card][0]) == high_value}
  winner_name = winner.map{ |winner| winner[:name]}.join(' and ')
puts "Winner(s) : #{winner_name}"

binding.pry
