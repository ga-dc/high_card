require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]

suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = suits.product(ranks)
players = []


deck = deck.shuffle
puts deck

loop do
    puts "#{players.length} so far.  Enter a player name, or type 'play:'"
    name = gets.chomp
    break if name == "play"
    new_player = {
        name: name,
        card: nil
    }
    players.push(new_player)
end

for player in players do
    player[:card] = deck.pop
end




index_values = players.map{ |player| ranks.find_index(player[:card][0])}
high_value = index.values.max
winners = players.select{|player| ranks.find_index(player[:card][0]) == high_value}
winners_name = winners.map{|winner| winner[:name]}.join(' and ')
puts "Winner(s) : #{winners_name}"
