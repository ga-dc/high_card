# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
cards = []

ranks.each do |rank|
  suits.each do |suit|
    pair = [rank,suit]
    deck << pair
  end
end
deck.shuffle!

while true
  puts "#{players.length} players so far. Enter a player name, or type Play."
  input = gets.chomp
  if (input == "play") || (input == "Play")
    players.each do |player|
      player[:card] = deck.pop
      if player[:card][0] == "A" || player[:card][0] == "K" ||player[:card][0] == "Q" ||player[:card][0] == "J"
        player[:card][0] = 11
      end
      cards << player[:card][0]
      # puts cards.inspect
      winner = cards.max
      # puts winner
      if player[:card][0] == winner
        puts "#{player[:name]} wins"
      end
    end
    break
  end
  if (input != "play") || (input != "Play")
    players << {name: input}
  end
end
