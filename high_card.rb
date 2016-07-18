# Use these two arrays to generate a deck of cards.

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards = []
ranks.each do |rank|
  suits.each do |suit|
    cards = "#{rank}, #{suit}"
    puts cards
  end
end



# 2. Collect an array of player names by prompting:
# 	* **"{n} players so far. Enter a player name, or type 'play':"**
# 3. Upon *"play"*, deal each player a card.
# 4. Find the highest card score dealt (Aces high).
# 5. Find the winning player name, then print out:
# 	* **"Winner(s): {name1, name2, …}!"**
