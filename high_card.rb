require "pry"
# Use these two arrays to generate a deck of cards.
classes = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []
p_1 = $players[0]
p_2 = $players[1]
p_3 = $players[2]

def build_deck(classes, suits)
  # build a deck
    # initialize an empty deck
    deck = []
    # loop through ranks
      # .each with index -> to pull the worth of a card
        Classes.each_with_index do |classes, index|
          suits.each do |suit|
            # loops suits
              # push each pair into the deck
              card = {
                suit: suit,
                class: classes,
                worth: index
              }
              deck << card
          end
        end
      # shuffle the deck
    return deck.shuffle
end

def choose_players
  #prompt user to enter name
    # or enter play
      #take each player entered
        # add to the our players array
  while true do
    puts "Hello, pres 'p' to play"
    name = gets.chomp.downcase #gets rid of extra line
    players << name
    break if name == 'p'
    $players << name
    #break
  end
  return players
end

def playCards
  deck = build_deck(classes, suits)
  n = $players.length

deck = build_deck(classes, suits)
choose players
binding.pry # can't be the last line on codes
puts "abcd"

# when iterating a collecion use the each method!!, but could also use for in loop
