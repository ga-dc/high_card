# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck.push( {
      suit: suit,
      rank: rank,
      value: index, # the index number of the card indicates which card will win e.g. A > K because 12 > 11
    } )
  end
end

deck = deck.shuffle

players = []
player_name = ""
while player_name != "play"
  puts "#{players.length} players so far. Enter a player name, or type 'play': "
  player_name = gets.chomp.to_s

  break if player_name == "play"
  players.push(player_name)
end

player_cards = players.map do |player|
  deck.pop
end # player_cards is an array of cards that are now OUT of circulation from the deck after being popped off and are assigned to each player

scores = player_cards.map do |card|
  card[:value]
end # scores is now an array of the players' card indices, which determines whose card is higher

high_score = scores.max

winner = []

scores.each_with_index do |player_score, index|
  winner.push(players[index]) if player_score == high_score # player_score for each player is the value of each player's card
end

if winner.length > 1
  puts "It's a tie between #{winner.join('& ')}"
else
  puts "The winner is #{winner.to_s}"
end
