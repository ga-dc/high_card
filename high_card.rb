class HighCard


ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ " of Hearts", " of Spades", " of Clubs", " of Diamonds" ]
@playerNames =[]
promting = true

@rankSuit = ranks.product(suits)
@deckArray = []
@numPlayers = 0


@rankSuit.each_with_index do |thing,index|
  card = {}
    card[:power] = index.to_i
    card[:name] = thing.join
    @deckArray.push(card)
end
def self.play
  @deckArray.shuffle!
  @player1card = @deckArray.sample
  @player1value = @player1card[:power]/4
  puts @playerNames[0] + " drew the card: " + @player1card[:name]

  @player2card = @deckArray.sample
  @player2value = @player2card[:power]/4
  puts @playerNames[1] + " drew the card: " + @player2card[:name]

  if @player1value > @player2value
    puts @playerNames[0] + " is the winner!"

  elsif @player2value > @player1value
    puts @playerNames[1] + " is the winner!"
  else
    puts "It's a tie! Drawing again!"
    play
end
end

while promting == true
puts "Type a Name or Play to start!"
answer = gets.chomp
if answer == "Play"
  prompting = false
  self.play
  break
end
@playerNames.push(answer)
@numPlayers += 1
puts @playerNames[@numPlayers-1] + " added. " + @numPlayers.to_s  + " added so far."
end



end
