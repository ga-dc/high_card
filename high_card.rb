# Use these two arrays to generate a deck of cards.
# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]

# require "pry"

suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

players = []
deck = []

def create_deck ranks, suits, deck
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      deck.push([rank, suit, index])
      deck.shuffle!
    end
  end
end


answer = ""

def set_players players, deck
  loop do
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    answer = gets.chomp
    break if answer == 'play'
    players.push({name: answer})
  end
  deal_cards players, deck
end

def deal_cards players, deck
  players.each_with_index do |player, index|
    player[:card] = deck[index]
  end
  puts players.inspect
  compare_cards players
end

def compare_cards players
  players.sort_by!{|player| player[:card][2]}
  puts "THE WINNER IS #{players[-1][:name]}"
end

create_deck ranks, suits, deck
set_players players, deck


# binding.pry
