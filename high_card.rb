# Use these two arrays to generate a deck of cards.
@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]
@cards = Array.new
require 'matrix'
class Menu

  @players = Array.new
  def self.display
    while 1
      puts "Enter user names or enter play"
      input = gets.chomp
      if input == "play"
        play_game @players
      else
        @players.push(input)
      end
    end
  end
  def play_game @players
     i = 0
     while i < @players.length
       card = 0 + rand(12)
       suit = 0 + rand(3)
       dealt = Matrix[
         [@ranks[card]],
         [@suits[suit]]
       ]
       @card[i] = dealt[card][suit]
       #I think I have the right idea.  I'm trying to randomize
       #Which card and which suit and combine them
       #Apparently ruby doesn't really have 2D arrays so I'm trying
       #I can't usually stay for late office hours due to pre-existing appts at home
       #I know it's not complete but this is what I could do on my own
       i++
       puts "#{@players[i]}"
     end
     while i < @players.length
       puts "#{@players[i]} has #{@cards[i]}"

       #output each player and the cards
       #that's probably not the right syntax
      
  end

end

Menu.display
