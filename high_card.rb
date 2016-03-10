require "pry"

# use two arrays to get a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

$players=[]
# $ makes players a global array

# $players =[{player_name:"Meri", card_name: []}, {player_name:"Sally", card_name: []}, {player_name:"Steve", card_name: []}]
#^^^testing


# build a deck
def build_deck(ranks, suits)

  #   make an empty deck
  deck = []

  # loop through ranks
  #    .each with index -> to pull the worth of a card
  ranks.each_with_index do |rank, index|

    # loops suits
    suits.each do |suit|

      # push each pair into the deck
      card ={
        suit: suit,
        rank: rank,
        worth: index
      }
      deck << card
    end
  end

  # shuffle the deck
  return deck.shuffle
end

# build players
def choose_players
  # prompt user to enter name
  #   or enter play
  #     take each player entered
  #       add to the players array
  while true do
    puts "Welcome. Enter your name or press 'p' to play"
    name = gets.chomp.downcase #working with strings
    break if name == 'p'
    $players << {player_name: name, card_name: []}
  end
end



#trying to get one card from the deck for each player
def play (deck)
  while deck.length>0 do

    #need to cycle through players array
    $players.each do |player|

      #cards from the deck are taken out
      dealing = deck.pop

      #the card is assigned to the player's collection of cards
      player[:card_name] << dealing

      #stop when there are no more cards in deck
      break if deck.length == 0
    end
  end
end

deck = build_deck(ranks, suits)
choose_players
play(deck)

binding.pry
puts "stop!"
