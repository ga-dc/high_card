
require "pry"
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ,"A"] #moved A to end since it's worth most
suits = [ "hearts", "spades", "clubs", "diamonds" ] #@suits, @ only used in classes
$players = [] #$ makes it global

# deck should be an array of hashes
# deck = {rank: "A", suit: "hearts", worth: 12} index will be = to rank

def build_deck (ranks, suits) #ranks and suits are arguments
  #initialize an empty deck
  deck = []
    #loop through ranks use (.each_with_index > to pull the worth of card)
    ranks.each_with_index do |rank, index| #each_with_index allows second argument (i)
      suits.each do |suit|
        card = { #make keys for this hash, suit:,
          suit: suit,
          rank: rank,
          worth: index
        }
        deck << card
      end
    end
  return deck.shuffle # if you print deck in terminal, it will shuffle the deck
                      #return deck.shuffle here after for loop is over
end

def choose_players
  while true do
    puts "Welcome. Enter your name or press 'p' to play" # console.log
    name = gets.chomp.downcase # this is to get the user input (prompt). .chomp removes "enter" keyword
    break if name == 'p' # this way p won't be pushed into players array.
    $players << name # add name to players array
  end
end

deck = build_deck(ranks, suits) # calls build_deck methods and saves it to "deck" variable
choose_players

binding.pry
puts "fix pry bug"
