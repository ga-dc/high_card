# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []
cards = ranks.product(suits).each do |deck|

puts "#{deck[1]} of #{deck[0]}"

end

playerName = ""
  loop do
    puts "#{players.length} players so far. Enter a player
    name, or type 'play':"
  playerName = gets.chomp
    break if playerName == "play"
    players << {name:playerName}
  end


# use .sample to randomly select from arrays
index = 0
until index == players.length
players.each do |player|
  player[:card] = cards.sample
  index += 1
  end
end
puts players
# have to push each card into the cards array
