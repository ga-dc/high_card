# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
tie = []
i = 0
dealt = 0
gameTie = 0

# 52.times do |i|
#   Array({ranks[i] => suits[i%3]})
# end

suits.map do |suit|
  ranks.length.times do |rank|
    card = [ranks[rank], suit]
    deck.push(card)
  end
end

deck.shuffle!
print deck

puts "#{players.length} players so far. Enter a player name, or type 'play'"
entry = gets.chomp
while entry != 'play' do
  players.push({name: "#{entry}"})
  puts "#{entry} has been added!"
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  entry = gets.chomp

end
while gameTie == 0
tie = []
while dealt < players.length do
  players[dealt][:card] = deck[dealt][0]
  dealt += 1
end


players.map do |player|
  if player[:card] == "A"
    player[:card] = 14
  elsif player[:card] == "K"
    player[:card] = 13
  elsif player[:card] == "Q"
    player[:card] = 12
  elsif player[:card] == "J"
    player[:card] = 11
  else
    player[:card] = player[:card]
  end
end



players.sort_by! {|value| -value[:card]}

players.map do |player|
  if player[:card] == players[0][:card]
    tie.push(player[:name])
  end
  tie
end

dealt = 0

if tie.length > 1
  tieCrew = tie.join(', ')
  puts "It's a tie between #{tieCrew}"
  deck.shuffle!

else
  puts "The winner is #{players[0][:name]}"
  gameTie = 1
end


end

print players
print tie
