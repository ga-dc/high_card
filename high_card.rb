# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
hands = []

ranks.each do |rank|
  suits.each do |suit|
    deck << [rank, suit]
  end
end
deck.shuffle!

#populate the players
player_input = nil
while player_input != "play" do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  player_input = gets.chomp
  if player_input != 'play'
    players << player_input
  end
end

#deal cards
round = {}
players.each do |player|
  round[player.to_sym] = deck.shift
end

puts round

#finds winner
current_best = nil
tie_holder = []
round.each do |player, hand|
  if !current_best
    current_best = [player, hand]
  end
  if ranks.index(hand[0]) > ranks.index(current_best[1][0])
    current_best = [player, hand]
    tie_holder = [current_best]
  elsif ranks.index(hand[0]) == ranks.index(current_best[1][0])
    tie_holder.push([player, hand])
  end
end

if tie_holder.length > 1
  print "It's a tie, between "
  tie_holder.each do |tie_guy|
    print "#{tie_guy[0]} with the #{tie_guy[1][0]} of #{tie_guy[1][1]}"
    if tie_guy == tie_holder[-2]
      print " and "
    elsif tie_guy == tie_holder[-1]
      print "!"
    else
      print ", "
    end
  end
else
  puts "#{current_best[0]} wins with the #{current_best[1][0]} of #{current_best[1][1]}!"
end
