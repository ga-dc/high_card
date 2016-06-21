# require "pry"


@players = []
@deck = []

def dealDeck
  values  = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
  suits   = ["Clubs", "Diamonds", "Hearts", "Spades"]

  values.each_with_index do |face, str| ##thanks to Adrian's solution on S.Overflow
    suits.each do |suit|
      @deck = @deck.push({
        str: str, #card str
        face: face, #face
        suit: suit
      })
      # puts @deck -- to check that it works
    end
  end
end

#code below doesnt work in pry lol
def numPlayers
    loop do
      puts "Please enter a player name, enter 'play' to start the game"
      player_name = gets.chomp #probably should check for bad user input
      if player_name.downcase == "play"
        break
      end
      @players << player_name
      puts "You have #{@players.length} players"
    end
    @players # return players
end

def deal
  @playerHands = {}
  @players.length.times do |i| #for players length make a hash with key value pair player for position i (starts at 0), 1 single card
    @playerHands[@players[i]] = @playDeck.pop
  end
end

def evaluate
  @handsSorted = @playerHands.sort_by { |player, card| card[:str]}
  @handsSorted.reverse! #need to reverse the order since it sorts it ascending by default
end

def printWinner
  @players.length.times do |i|
    puts "#{i+1} place is  #{@handsSorted[i][0]} with a #{@handsSorted[i][1][:face]} of #{@handsSorted[i][1][:suit]}" #accessing the right values to puts
  end
end

#play again?
def newGame
    puts "Enter YES to play again, otherwise say NO to exit"
    answer = gets.chomp
    if answer.downcase == "no"
      puts "Game Over"
    else answer.downcase == "yes"
      @deck = []
      @players = []
      @playerHands = {} #reset
      play
    end
end


def play
  dealDeck
  @playDeck = @deck.shuffle
  # puts @playDeck #to check that it works
  numPlayers
  # puts @players.inspect #to check players
  deal
  # puts @playerHands.inspect #check dealt hands
  evaluate
  puts @handsSorted.inspect #check sorting hands descending by card str
  printWinner
  newGame
end

play

# binding.pry
#
# puts "end of file"
