# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

#setting instance variable - available to all methods
@players = []
#empty deck array that we'll push into
deck = []

#first we reference the array with "ranks".  each_with_index is the method call.  Everything else between 'do' and 'end' is the block.
ranks.each_with_index do |rank, index|
  suits.each do |suits|
    #this will push into the empty deck array listed above
    deck << [rank, suits, index]
  end
end

#shuffling deck...
@shuffle_that_deck = deck.shuffle

#result of game
def resultsGame
  puts "Here are your cards..."
  @players.each do |player| #this iterates for each player
    #ok.  the first we reference the user's input for name.  Then the actual rank that it will be.  Finally we are referencing the suit
    puts "#{player[:name]} has #{player[:card][0]} of #{player[:card][1]}"
      puts "and user"
    end
  end

  def beginGame
    while @players.length < 4 #only 4 players allowed in game
      #now we will tell the user how many players they have currently in the game.
      puts "#{@players.length} players currently in the game.  Input another name, or type play to begin"
      input = gets.chomp
      #if user enters "play" then we initialize game and break will terminate this loop
    if
      input == "play"
      resultsGame
      break #lets get out of this internal loop
    elsif
      @players << {name: input, card:@shuffle_that_deck[@players.length]}
    end
    #one more 'if' loop to tell game to initialize once maximum players are in the game
    if @players.length == 4
      resultsGame
    end
    end
  end

def winner
  #we'll use the max_by to return the maximum value
  winner = @players.max_by {|x| x[:card][2]}
  puts "#{winner[:name]} has the highest card... You BADASS"
end

def restartGame #restarts the game AND allows new players to play - in case there's a line for the game :)
  winner = @players.max_by {|x| x[:card][2]}
    if winner
    puts "Want to play again? (y/n)"
    play_again = gets.chomp
  end
  if play_again ="y"
    @players.clear
    beginGame
  end
end

puts "Welcome to the highest card game!  A game that you, and three of your friends, can play anytime!"
puts
beginGame
winner
restartGame
