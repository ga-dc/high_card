# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

players = []


player_cards = []

ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck.push({
      score: i,
      rank: rank,
      suit: suit
      })
  end
end

index = 0
while true
  puts "#{players.length} players so far. Enter a player name and type 'play':"
  name = gets.chomp
  break if name == "play"
  players<<name
end

players.each{|player| puts "Welcome " + player}

if name == "play"
  shuffled_deck = deck.shuffle
  players.each_with_index do |player, index|
    player_cards<<shuffled_deck.sample
    puts "#{player}, your card is #{player_cards[index]}"
  end
  # find max integer of shuffled_deck.sample[player]
  scores = player_cards.map do |card|
    card[:score]
  end
  high_card = scores.max
  winner = []

  scores.each_with_index do |score, index|
    winner.push(players[index]) if score == high_card
  end

  puts "Winner(s): #{winner.join(', ')}"
  puts player_cards
end
