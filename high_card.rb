# Use these two arrays to generate a deck of cards.
$ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
$suits = [ "hearts", "spades", "clubs", "diamonds" ]

# create hash for values of each card rank
$card_values = Hash.new

def make_deck
  deck = Array.new
  # array-of-arrays with card rank and suit
  $suits.each do |suit|
    $ranks.each_with_index do |rank, index|
      deck.push([rank, suit])
      # create hash with card values
      if rank == "A"
        $card_values[rank] = 14
      else
        $card_values[rank] = index - 1
      end
    end
  end
  # shuffle deck in place
  deck.shuffle!
  return deck
end
# create new array-of-arrays with player's name and their card
def deal_cards(players)
  deck = make_deck()
  counter = -1
  deal = players.map do |player|
      counter = counter + 1
      [player, deck[counter]]
  end
  return deal
end

def play_game (players)
  deal = deal_cards(players)
  high_card =  deal.max_by {|card| $card_values[card[1][0]]}
  # puts "high card: #{high_card}"
  # select all players whose card is equal in value to the high card
  winners = deal.select{|card| $card_values[card[1][0]] == $card_values[high_card[1][0]]}
  # puts "winners: #{winners}"
  # push the names of the winners to array
  winners_names = Array.new
  winners.each {|name| winners_names.push("#{name[0]}")}
  end_game(winners_names, players)
end

def end_game (winners_names, players)
  # check if tie
  if winners_names.length > 1
    puts "Tie! Press 'Enter' to draw again."
    input = gets
    if input == "\n"
      play_game(players)
    end
  else
    puts "The winner is #{winners_names[0]}!"
  end
end

def start_game
  # create arrays for the players and the deck of cards
  players = Array.new
  # gather player names
  input = ""
  while input != 'play' && players.length < 49 #most number w/o forcing a tie
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    input = gets.chomp
    if input !='play'
      players.push(input)
    end
  end
  play_game(players)
end

start_game
