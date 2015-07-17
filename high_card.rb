# Step One: Create cards:


ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players =[]
deck = []
ranks.each do |rank|
  suits.each do |suit|
    cards = [rank, suit]
   deck.push(card)
  end
end
puts deck.inspect

#Step two: Randomly Shuffle:

deck.shuffle
puts deck.shuffle.inspect

# Step Three: Collect array of player names
name = ""
until (name == "play")
puts "#{players.length} players so far. Enter a player name, or type 'play':"
name = gets.chomp.to_s
players.push(name)

end
#Step Four: Dealing each player a card
cards = players.map do |player|
deck.pop
end
