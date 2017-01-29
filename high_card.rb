# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
hand = []
ranks.each do |value|
  suits.each do |suit|
    deck.push([(if value == "A"; 13 else ranks.index(value)end), value , suit])
  end
end

puts "#{players.count} players so far. Enter a player name, or type 'play' :"
new_player = gets.chomp
while new_player != "play"
  players.push(new_player)
  puts "#{new_player} has been added to the game."
  puts "#{players.count} players so far. Enter a player name, or type 'play' :"
  new_player = gets.chomp
end

turns = 0

while turns<1 do
  hand =[]
  i=0
  while i<players.length do
    hand.push([players[i],deck.shuffle.pop])
    i+=1
  end

  hand.sort!{|a,b| b[1][0] <=> a[1][0]}
  puts hand.inspect

if hand.length <2
  puts "If you play by yourself you'll win every time!"
  turns +=1
  elsif hand[0][1][0]== hand[1][1][0]
    puts "There was a tie of the highest card! A " + hand[0][1][1].to_s + ". We're playing another hand!"
  else
    puts hand[0][0] + " won with a " + hand[0][1][1].to_s + " of " + hand[0][1][2]
    turns += 1
end
end
