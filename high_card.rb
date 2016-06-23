require "pry"

def build_deck

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

#build deck of cards
ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck << [rank, suit, i]
  end
end
return deck.shuffle

end

#create players:
def create_players
  players=[]
  while true
    puts "Enter name of player or type 'start' to begin"
    playerName = gets.chomp

    if playerName == "start"
      break
    end
      players << playerName
    end
  return players
end

# Deal/Map players into cards
def deal
  deck = build_deck
    players = create_players
    hands = []
    puts "Dealing cards..."
    players.each do |player|
      hand = {
        player: player, card: deck.pop
      }
      hands << hand
    end
    return hands
  end

#ROADBLOCK: Would there be a way to deal the cards and pause before determining the winner?

# Find highest score
def determine_winner
  cards = deal
  hands = cards.sort_by do |hand, i|
    hand[:card][2] #limits the hand with two arrays
  end
  winner = hands.last[:player]
  winnerCard = hands.last[:card]
  winnerCard = winnerCard.join(" of ") #ROADBLOCK: I can't seem to figure this part out. I want to just return the rank and the suit, and return the index for score. Example, 7 of hearts instead of 7 of hearts of 6. I don't want the 6 there.

  # score = hands.last[:card].split("")

  puts "#{winner} drew the card, #{winnerCard}"

  # puts "#{winner}'s score is #{score}'"
  #ROADBLOCK: I want the index to print out for the score here

  puts "#{winner} wins!"
end


determine_winner

puts "Game over"

binding.pry

puts "EOF"
