# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks = ranks.rotate(1)


deck = []
#Create and randomize deck
ranks.each_with_index do |r, i|
  suits.each{ |s| deck.push({ index: i, rank: r, suit: s, }) }
end
deck = deck.shuffle

player = nil
players = []
winners = []

#Collect player names
while player != 'play'
  n = players.length
  puts "#{n} players so far. Enter a player name, or type play:"
  player = gets.chomp
  if player != 'play'
    players.push(player)
  end
end

#while loop to redraw in case of a tie
while winners.length != 1
  #create set of cards for players
  l = players.length
  hands = deck.slice(0, l)

  #assign players to hands (aka deal the cards)
  j = 0
  for i in hands do
    i[:name] = players[j]
    j += 1
  end

  #finds hands with highest score
  winning_hands = hands.group_by{|x| x[:index]}.max.last

  #returns only the names of the winning players
  winners = winning_hands.map{ |h| h[:name] }

  #determines what message to display
  if winners.length == 1
    puts "Winner: #{winners}"
  else
    puts "It's a tie between #{winners.join(" and ")}"
  end
end
