# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits)
deck.shuffle!

while true
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  input = gets.chomp
  if input != "play"
    puts "#{input.capitalize} has joined the game."
    players << input.capitalize
  elsif input == "play"
    puts "LET'S PLAY"
    p players
  break
  end
end

players.
