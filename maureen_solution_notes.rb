require 'pry'

RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]

PLAYERS = []
BUFFER = "*" * 50

# create a random deck
def build_deck(ranks, suits)
  deck = []
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      card = { #create card hash
        suit: suit,
        rank: rank,
        worth: i
      }
      deck << card
    end
  end
  deck.shuffle # returns the deck so I can use it later
end

# add players until game starts
def choose_players
  while true
    puts BUFFER # adds cool "*********" divider
    puts "Want to play a game? #{PLAYERS.length} players so far. \n Please enter your name or press 'p' to play"
    name = gets.chomp.downcase # This gets name, and chomps off enter key value
    break if name =='p'
    player = {name:name, round_wins:0}
    PLAYERS << player # push player into the PLAYERS array 
  end
end

#deal out hands
def deal_cards(deck)
  hands = []
  PLAYERS.each do |player| # for each player
    hand = { #create a hash for each player that includes  
      player: player, card:deck.shift # .shift retrieves and removes first item from array
    }
    #puts "#{player[:name]} has #{hand}"
    #### this prints out
    # maureen has {:player=>{:name=>"maureen", :round_wins=>0}, :card=>{:suit=>"diamonds", :rank=>"Q", :worth=>10}}
    hands << hand
  end
  hands #return hands array so I can use it later
end

#find a winner
def determine_winner(hands)
  winning_hand = hands.max_by do |hand| #max_by returns max value from array
    hand[:card][:worth] # prints out :worth from :card hash
    puts "this is #{hand[:player][:name]}'s card value: #{hand[:card][:worth]}"
  end
  # adds 1 to winning hand
  winning_hand[:player][:round_wins] += 1
  puts "The winner is #{winning_hand[:player][:name]}"
  # return the winning_hand
  winning_hand
end


deck = build_deck(RANKS, SUITS)
choose_players
hands = deal_cards(deck)
determine_winner(hands)


binding.pry
puts "end pry"


# words = []
# while true
# puts "Type names into list"
# answer = gets.chomp
# break if words.length == 3
# words << answer
# end
# puts "Your list includes #{words.join(",")}"


# to print out a hash
# player = {name:name, round_wins:0}
# puts "each #{player[:name]} has #{hand}"
