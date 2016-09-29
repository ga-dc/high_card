# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []


ranks.each do |rank|
  suits.each do |suit|
    pair = [rank, suit]
    deck << pair
  end
end
deck.shuffle!
puts deck.inspect

while true
puts "There's #{players.length} players so far. Enter a player name, or type 'play'"
player_name = gets.chomp
    if (player_name == "play")
      players.each do |player|
        player[:card] = deck.pop
      end
  break
end

if (player_name != "play")
players << {name: player_name}
end
end
puts players
