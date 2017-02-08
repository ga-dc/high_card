# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck =[]
ranks.each do |rank|
  suits.each do |suit|
    #deck.push((rank.to_s + " " + suit).split(' '))
    deck << [rank, suit]
  end
end
deck = deck.shuffle
players = []
response =''

while true
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  response = gets.chomp
  if response.downcase == "play"
    break
  end
  players << response
end
# puts ''
# puts players

card_hands = []
players.each_with_index do |player, i|
  card_hands << [player, deck[i]]  # Array will look like this [player1, [rank, suit]]. We care about card_hands[n][0] and card_hands[n][1][0]
end

card_hands.each do |hand|
  puts "Hands : #{hand}"
end

winner = nil
winner_index = nil
highest = 0
best = nil
suit = nil
card_hands.each_with_index do |hand, player|
  if ranks.index(hand[1][0]) == 0
    winner = hand[0]
    best = hand[1][0]
    suit = hand[1][1]
    break
  elsif ranks.index(hand[1][0]) > highest
    highest = ranks.index(hand[1][0])
    winner_index = player
  end
end

if winner == nil
  winner = card_hands[winner_index][0]
  best = card_hands[winner_index][1][0]
  suit = card_hands[winner_index][1][1]
end

puts "The winner was #{winner} with a #{best} of #{suit}."
