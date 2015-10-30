#function to make a deck
def make_deck
  #ranks, in order
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  #suits
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  #create deck, empty
  deck = []
  #iterate through ranks and suits to form a 52 card deck
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      #rank is the name of the card ace-king
      #value is the card's strength
      #suit is suit
      card = {
        rank: rank,
        value: index,
        suit: suit
      }
      #add card to deck
      deck.push(card)
    end
  end
  #return deck
  return deck
end

#function for playing the game
def play_game
  #shuffle the deck
  shuffled_deck = make_deck.shuffle
  #create player object
  players = {}
  loop do
    #instructions
    puts "#{players.length} players currently.  Enter your name to register as a new player.  Type play to draw cards.  Use quit or exit to quit."
    user_input = gets.chomp
    #exits loop if user chooses
    if user_input == "quit" || user_input == "exit"
      break
    #creates and shuffles a new deck
    elsif user_input == "deck"
      puts "New deck ready!"
      shuffled_deck = make_deck.shuffle
      next
    #checks for user error
    elsif user_input == "play" && players.length == 0
      puts "Please register at least one player!"
      next
    #now plays the game
    elsif user_input == "play"
      #checks deck state before dealing
      if players.length > shuffled_deck.length
        puts "Not enough cards! Type deck to get a new shuffled deck."
        next
      end
      #deal a card off the deck
      players.each do |key, value|
        players[key].push(shuffled_deck.pop)
        #report cards
        puts "#{key}'s card is #{players[key].last[:rank]} of #{players[key].last[:suit]}"
      end
      #create winner array
      winner = []
      #add first player to winner array, to start with
      winner.push(players.first[0])
      #check to see if there's only 1 player
      players.each do |key, value|
        if players.length == 1
          puts "Maybe you should add another player for a more interesting game!"
        #find the highest card, update winner array accordingly
        elsif players[key].last[:value]>players[winner.first].last[:value]
          winner=[]
          winner.push(key)
        #in the even of a tie, keep all winning players in array
        elsif players[key].last[:value] == players[winner.first].last[:value]
           winner.push(key)
        end
        #probably should've done this differently but since i started winner
        #array with first player I have to make sure he's not on there twice
        winner = winner.uniq
      end
        #if there's one winner...
        if winner.length == 1
          puts "#{winner.first} won with a #{players[winner.first].last[:rank]} of #{players[winner.first].last[:suit]}"
        else
          #more than one winner...
          puts "Tie game! Winners are: "
          winner.each {|person| puts "#{person} - #{players[person].last[:rank]} of #{players[person].last[:suit]}"}
        end
    else
      #add a new player and start his empty card array
      players[user_input] = []
    end
  end
end
#play the game
play_game
