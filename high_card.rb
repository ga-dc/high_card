# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks = ranks.rotate(1)


deck = []

ranks.each_with_index do |r, i|
  suits.each{ |s| deck.push({ index: i, rank: r, suit: s, }) }
end

deck = deck.shuffle

player = nil
players = []

while player != 'play'
  n = players.length
  puts "#{n} players so far. Enter a player name, or type play:"
  player = gets.chomp
  if player != 'play'
    players.push(player)
  end
end

l = players.length
hands = deck.slice(0, l)

j = 0
for i in hands do
  i[:name] = players[j]
  j += 1
end

puts hands

winning_hands = hands.group_by{|x| x[:index]}.max.last
winners = winning_hands[:name]

if winners.length == 1
  puts "Winner: #{winners}"
elsif winners.length > 1
  puts "It's a tie between #{winners.join(" and ")}"
else
  puts "Error: there are no players."
end
