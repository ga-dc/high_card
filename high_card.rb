# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
#extra if you'd like to create your players
# class Person
#   def initialize(name, gender, age)
#     @name = name
#     @gender = gender
#     @age = age
#   end
# end


class HighCard
  def initialize(ranks, suits, players)
    @ranks = ranks
    @suits = suits
    @players = players
    @deck = []
    @winner = []
    @win = 0
    @highValue = []
    @cards
  end

  def shuffleDeck()
    @ranks.each_with_index {|x,y|
      @suits.each do |z|
        @deck << {suit: z, value: x, rank: y}
      end
    }
    @deck.shuffle!;
  end

 #technically you can input the name yourself if I added a parameter to method

 #I could even take it further and have another class that creates the players have them be referenced
  def getPlayers()
    loop do
      puts "There is now #{@players.length} players "
      name = gets.chomp
      break if name.capitalize === "Play" && @players.length > 1
      @players<<name.capitalize
    end
  end

  def dealCards()
    @cards = @players.map do |hand|
      @deck.pop()
    end

    @cards.each do |num|
      puts num
    end
  end


  def getWinner()
    @highValue = @cards.map do |hand|
      hand[:rank]
    end
    @win = @highValue.max
    @highValue.each_with_index{|x,y|
      if x == @win
        puts "Winning card is #{@cards[y]}"
        @winner << @players[y]
        if @winner.length == 2
          puts "Tie!"
          @deck = []
          dealCards()
          getWinner()
        else
          puts "Winner is " + @winner[0]
        end
        @winner = []
      end
    }
  end
end

#look familiar?
game = HighCard.new(ranks,suits,players)
game.shuffleDeck()
game.getPlayers()
game.dealCards()
game.getWinner()
