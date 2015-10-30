# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
suits.each do |suit|
  ranks.each_with_index do |rank, index|
    deck.push({rank: rank, suit: suit, value: index+2})
  end
end

# shuffle deck
deck = deck.shuffle
# enter in up to 5 user names and then play game.
players = []
loop do
puts "There are " + players.length.to_s + " number of players so far. Enter your name or type 'play' to begin!:"
user_input = gets.chomp
  if user_input == "play" then
    puts "Great! Let's play."
    break
  else
    players.push(user_input)
  end
end

# deal deck to players and pay game
while deck.length > players.length do
  deal = players.map do |player|
    [player, deck.shift]
  end
  puts deal

  deal.each do |player|
    if player[1][0] == "J" then player[1][0] = 11
    elsif player[1][0] == "Q" then player[1][0] = 12
    elsif player[1][0] == "K" then player[1][0] = 13
    elsif player[1][0] == "A" then player[1][0] = 14
    end
  end

# find and print winner
  winner = deal.max_by { |x| x[1][0] }
  puts winner[0] + " wins this round"
end
