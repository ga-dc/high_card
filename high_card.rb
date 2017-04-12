require('pry')
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
cards_dealt = []

suits.each do |suit|
  ranks.each do |rank|
    deck << [rank, suit]
  end
end

deck = deck.shuffle

loop do
  puts "#{players.length} players so far. Enter player name, or Enter 'play'"
  name = gets.chomp
  break if name == 'play'
  players << {name: name}
end

players.each_with_index do |player,index|
  cards_dealt << {player: player[:name], suit: deck[index][1], ranks: deck[index][0]}
end

cards_dealt = cards_dealt.each do |hsh|
  if hsh[:ranks] == 'A'
     hsh[:ranks] = 14
  elsif hsh[:ranks] == 'K'
     hsh[:ranks] = 13
  elsif hsh[:ranks] == 'Q'
     hsh[:ranks] = 12
  elsif hsh[:ranks] == 'J'
     hsh[:ranks] = 11
  end
end

puts cards_dealt

cards_dealt = cards_dealt.sort_by {|hsh|+hsh[:ranks]}

# winner = cards_dealt{|player|player.first}
