# Use these two arrays to generate a deck of cards.
def the_deck
  ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  #methods for creating deck
  ranks.each_with_index do |r, c|
    #takes values from rank
    suits.each do |s|
      #takes values from suit
      deck.push({
        score: c,
        rank: r,
        suit: s,
      })
        #pushes ranks and suits and score to deck
    end
  end
  return deck.shuffle
end

#get players
deck = the_deck
players = []
name = nil
until name == "" do
  puts "Please enter at least two player names, then press enter to begin"
  name = gets.chomp.to_s.downcase
  puts "#{ name } has been added to the game"
  players.push ("#{name}")
end

players.pop
puts " #{players} are Ready to play!"

#map players into cards
cards = players.map do |name|
  deck.pop
end

#score the players' cards
scores = cards.map do |card|
  card[:score]
end

high_score = scores.max

winners = []

scores.each_with_index do |score, index|
  winners.push(players[index]) if score == high_score
end
# attempted bonus feature to notify of a tie
# if high_score == ( scores.length ) -1
#   puts "There was a tie"
# end

puts "The winner is: #{ winners.join(', ') }"
puts cards
