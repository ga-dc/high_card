# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits)
deck.shuffle

while true
   puts "#{players.length} players so far. Enter a player name, or type 'play' to begin."
   input = gets.chomp
   if input != "play"
     puts "#{input.capitalize} has joined the game."
     players << input.capitalize
   elsif input == "play"
     puts "Okay, let's play High Card."
     break
   end
 end

players.each do |player|
  player[:card] = deck.sample
end
