require "pry"


# class Cards (need to use product)
# # Use these two arrays to generate a deck of cards.
def game
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
points = []

ranks.each_with_index do |rank, score|
  suits.each do |suit|
    deck.push({
      points: points,
      ranks: rank,
      suits: suit
      })

    end
  end

  return deck.shuffle
end

players = []

while 1
puts "Play new game?Y/N"
input = gets.chomp.upcase
    if input == "Y"
    puts "Who is player 1?"
      player1 = gets.chomp
      players.push(player1)
    puts "Whos is player 2?"
      player2 = gets.chomp
      players.push(player2)
    break
  else
    puts "Goodbye"
    exit(true)
  end
end

cards = players.map do |player|
  $deck.pop()
end

scores = cards.map do |card|
  card[:points]
end

win = points.max

###############

winner = []

scores.each_with_index do |score, index|
  winner.push(players[index]) if score == win
end

puts "Winner: #{winner.join(', ')}"



# class Players
#
# @@players = []
#
# attr_accessor :name
#
# def initialize (name)
#   @name = name
#   @@players.push(self)
# end
#
# def play (name1, name2)
#   puts "Want to play? Y/N"
#   input = gets.chomp
#   if input == "Y"
#     puts "Enter player 1 name"
#     name1 = gets.chomp
#     puts "Enter player 2 name"
#     name2 = gets.chomp
#     end
#   end
# end


binding.pry
