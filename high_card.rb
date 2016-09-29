# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []

rank_index = ranks.index('')
puts rank_index
ranks.each do |rank|
  suits.each do |suit|
    deck << [rank, suit]
  end
end


deck.shuffle!

player =  gets.chomp
while player.downcase != 'play'
  if player.downcase != 'play'
    players << {:name => player}
  else
    break
  end
  player = gets.chomp
end

players.each do |player|
  puts player[:card] = deck.pop
end

puts players

winner = []

players.each do |player|
  card_index = ranks.index(player[:card][0])
  puts card_index
end
