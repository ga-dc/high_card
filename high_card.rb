require "pry"
# Use these two arrays to generate a deck of cards.
@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]

def createDeck
  decks=[]
  @ranks.each do |i|
    @suits.each do |j|
      decks.push([i,j])
    end
  end
  @randomDeck=decks.shuffle
    puts "#{@randomDeck}"
    createPlyers
end


@playersList=[]

def createPlyers
    plyernumber=0
    playername=""
    player={}
    puts "Please enter players name each time it ask you. If you enter enough player enter x"
    while playername!= "x" do
    puts "Please enter the next player"
    playername=gets.chomp
    player[:name]=playername
    @playersList.push(player)
    puts "#{player}"
    end
    play
end

def play
  @playersList.each_with_index do |plareri|
    puts "#{@playersList[plareri][:name]} card is #{newRandomDeck[0]}"
    # Comparsion will be done here
    puts "The winner is"
  end

end



createDeck




binding "pry"
