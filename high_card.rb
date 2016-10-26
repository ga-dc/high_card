# Use these two arrays to generate a deck of cards.

require "pry"

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck << [i, rank, suit]
    end
end

def get_player players, deck
  loop do
    puts "There are #{players.length} players so far. Enter a name, or type 'play'"
    player = gets.chomp
    break if player == 'play'
    players << {name: player}
  end
  deal_cards players, deck
end

def deal_cards (players, deck)
 deck.shuffle!
 i = 0
 while i < players.length do
   players[i][:card] =  deck[i]
   i +=1
 end
 check_win players, deck
end

def check_win players, deck
  max_value = players.map{|obj| obj[:card][0]}.max
  winner = players.select{|obj| obj[:card][0] == max_value}
  if winner.length > 1
    winners = winner.map{|obj| obj[:name]}.join(", ")
    puts "It is a tie between #{winners}"
  else
    puts "The winner is #{winner[0][:name]}"
  end
end

get_player players, deck

binding.pry
