# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

deck = []
# game = []
deck = ranks.product(suits)
 puts deck.shuffle



# while name entered is not 'play, we're going to ask players to enter their name and then push that name into a players array
name = ""
 while name != "play"
   puts "what's you name? (Enter 'play' to being game.)"
   name = gets.chomp
   players << name unless name == 'play'
   puts "Hi " + name + ', welcome to the game!'
 end

# game << {player: player, card: @deck.pop}
 # 2. Collect an array of player names by prompting:
 # 	* **"{n} players so far. Enter a player name, or type 'play':"**
