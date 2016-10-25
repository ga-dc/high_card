require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

def build_deck ranks, suits, deck
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      deck << [rank, suit, i].inspect
    end
  end
end

def shuffle_deck deck
  deck.shuffle!
end

def get_players players
  loop do
    puts "#{players.length} players so far.  Enter a player name, or type 'play'"
    answer = gets.chomp
    break if answer == "play"
    players << {name: answer}
  end
  binding.pry
end

build_deck ranks, suits, deck
shuffle_deck deck
get_players players
