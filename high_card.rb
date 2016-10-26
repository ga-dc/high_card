require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []

def build_deck ranks, suits, deck
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      deck << [rank, suit, i]
    end
  end
  shuffle_deck deck
end

def shuffle_deck deck
  deck.shuffle!
end

# getting following error when attempting to reshuffle after tie
# NameError: undefined local variable or method `deck' for main:Object
# from (pry):2:in `compare_cards'

def reshuffle players, deck
  shuffle_deck deck
  deal_cards players, deck
end

def deal_cards players, deck
  players.each_with_index do |player, i|
    player[:card] = deck[i]
  end
  compare_cards players, deck
end

def compare_cards players, deck
  players.sort_by! { |player| player[:card][2] }
  check_winner players, deck
end

def check_winner players, deck
  if players[-1][:card][2] == players[-2][:card][2]
    winners = players.select {|player| player[:card][2] == players.last[:card][2]}
    10.times do |i|
      puts "*" * i
      sleep (1.0/10.0)
    end
    puts players
    10.times do |i|
      puts "*" * (10 - i)
      sleep (1.0/10.0)
    end
    puts "****** The winners are #{winners.map{|winner| winner[:name]}.join(", and ")}.... Reshuffling......"
    reshuffle players, deck
  else
    10.times do |i|
      puts "*" * i
      sleep (1.0/10.0)
    end
    puts players
    10.times do |i|
      puts "*" * (10 - i)
      sleep (1.0/10.0)
    end
    puts "#{players[-1][:name].upcase} has won with the #{players[-1][:card][0]} of #{players[-1][:card][1]}!!!"
  end
end

def get_players players, deck
  loop do
    puts "#{players.length} players so far.  Enter a player name, or type 'play'"
    answer = gets.chomp
    break if answer == "play"
    players << {name: answer}
  end
  deal_cards players, deck
end

build_deck ranks, suits, deck
get_players players, deck
