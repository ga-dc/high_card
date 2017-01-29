# line for visual clarity in bash
puts "*" * 50

# arrays to generate a deck of cards
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ] #moved "A" to the end
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

#build deck with ranks, suits, values
deck = []
suits.each do |suit|
  ranks.each_with_index do |rank, index|
    deck.push({rank: rank, suit: suit, value: index+2})
  end
end

#shuffle deck
shuffled_deck = deck.shuffle

#collect an array of player names. Maxxing out at 10, or playing when "play" is input
puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
response = gets.chomp.to_s
until response === "play"
  players.push(response)
  if players.length === 10
    puts "10 is enough!"
    break
  end
  puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
  response = gets.chomp.to_s
end
puts "play time!"

#once playing, deal each player a card
i = 0
played_cards = []
while (i<players.length)
  shuffled_deck[i][:player] = players[i]
  played_cards.push(shuffled_deck[i])
  i += 1
end

#aggregate all the scores
values = []
values = played_cards.map do |card|
  card[:value]
end

#find the highest score
max = values.max

#find the winner(s)
winners = []
played_cards.each do |card|
  if card[:value] === max
    winners.push(card[:player])
  else
  end
end

#display the winner(s)
w = 0
puts "The winners are: "
while (w<winners.length)
  puts winners[w]
  w+=1
end

#line for bash clarity
puts "*" * 50


# ### Bonus I
#
# Print out *one* of the following outcomes:
#
# * **"The winner is {name}!"**
# * **"It's a tie between {name1, name2, …}!"**
#
# ### Bonus II
#
# Have the game redraw cards for all players in the case of a tie.
