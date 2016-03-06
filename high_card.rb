# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []
hand = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

shuffled = deck.shuffle

puts players.length.to_s + " players so far. Enter a player name, or type 'play'"
players << gets.chomp

2.times do |cards|
  hand.push(shuffled[cards])
end

puts "Ok, " + players.to_s + " gets " + hand[0].to_s + " and the computer gets " + hand[1].to_s

if hand[0][0] > hand[1][0]
  puts players.to_s + " wins! Nice one."
elsif hand[0][0] < hand[1][0]
  puts "Computer wins. Better luck next time (loser)."
elsif hand[0][0] == hand[1][0]
  puts players.to_s + ", looks like you and the computer tied. Better restart the program until Jeff learns enough Ruy to deal with this."
end
