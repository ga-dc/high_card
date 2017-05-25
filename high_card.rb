require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


deck = ranks.product(suits).shuffle

players = []

table = []

#2) Collect an array of player names by prompting
answer = ""
while answer != "play" do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  puts players
  answer = gets.chomp
  # if answer is play then dont do the line below
  players.push({name: answer})
end

# 3) Upon "play", deal each player a card.
# while answer == "play" do


players.each do |player|
  player[:card] = deck.pop
  table.push(player[:card])
end

   puts players


# end

# 4) Find the highest card score dealt (Aces high).

converted_table = table.map do |card|
  # puts card.inspect
  if card[0] == "J"
    11
  elsif card[0] == "Q"
    12
  elsif card[0] == "K"
    13
  elsif card[0] == "A"
    14
  else
    card[0]
 end
end

# puts converted_table.inspect
highest_score = converted_table.max





# 5. Find the winning player name, then print out:
# 	  "Winner(s): {name1, name2, …}!"


binding.pry
