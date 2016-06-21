# require "pry"


@players = []
hand = []
@deck = []

def dealDeck
  values  = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
  suits   = ["Clubs", "Diamonds", "Hearts", "Spades"]

  values.each_with_index do |v, i| ##thanks to Adrian's solution on S.Overflow
    suits.each do |s|
      @deck = @deck.push({
        rank: i,
        value: v,
        suit: s
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
  @playDeck.each do |card|
    @players.each do |player|
      @playerHands[player] = card
    end
  end
end

#evaluate
#sort the array by card rank, which is position 0

#print winner
#puts the sorted array with the card + suit

#play again?
def newGame
  @deck = []
  @players = []
  @playerHands = {}
end

dealDeck
@playDeck = @deck.shuffle
puts @playDeck #to check that it works
numPlayers
puts @players.inspect #to check players
deal
puts @playerHands


# binding.pry
#
# puts "end of file"
