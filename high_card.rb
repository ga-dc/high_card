# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

# Created new variables as empty arrays
string_ranks = []
deck =[]

# 1. Build a deck of shuffled cards
# for each value in rank, convert it to a string
ranks.each do |rank|
    string_ranks << rank.to_s
end
# for each suit, run through and add each string_rank value, then push it into the deck
suits.each do |suit|
    # use .each_with_index in order to associate the score with the index value
    string_ranks.each_with_index do |rank, i|
        deck.push({
            card: rank + " of " + suit,
            score: i,
            })
    end
end
# now we have a deck! hooray!

# 2. Collect an array of player names

n = 0
# I used a while loop for the value of a counter n, running as long as it's less than the number of cards in the deck. I figure you can't have more than 52 players, so that was a good (er "good") upper limit.
while n < deck.length
  puts "#{n} players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  # stop running this loop when "play" is entered
  break if name == "play"
  players.push(name)
  # increase the counter every time
  n = n + 1
end
n=players.length

#3. Upon *"play"*, deal each player a card
# create a new array using .map on the players--that will give you a new array of 4 values (based on original players array). Shuffle the deck, then add values to the cards array using deck.pop
cards = players.map do |player|
    deck.shuffle!
    deck.pop
end

# # 4. Find the highest card score dealt (Aces high).
# I created a new array of scores (again using .map) and filled it with the :score values associated with each card
scores = cards.map do |card|
    card[:score]
end
# .max returns the highest value in an array, so I set that value as its own variable
top_score = scores.max


# 5. Find the winning player name, then print it out

winners = []
# pass in each score value and compare it to the top_score. If it matches, the player name associated with that score gets added to the winners array
scores.each_with_index do |score, i|
    if score == top_score
        winners.push(players[i])
    end
end
# if their is only one winner, run the first half; if there is more than one winner, run the second half
    if winners.length > 1
        puts "The winners are #{winners.join(' and ')}!"
    elsif winners.length == 1
        puts "The winner is #{winners.join}!"
     end     
puts cards
