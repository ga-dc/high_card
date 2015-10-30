# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end
deck.shuffle!

players = []
loop do
  puts players.length.to_s + " players so far. Enter a player name or type play."
  user_input = gets.chomp
  if user_input == "play" then
    break
  else
    players.push(user_input)
  end
end

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

  winner = deal.max_by { |x| x[1][0] }

  puts winner[0] + " wins this round"
end


# players.each do |player|
