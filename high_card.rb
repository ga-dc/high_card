# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]



#make a deck of cards
  #each card is in a mini array with a value and suit
    #make a loop
  deck=[]
  ranks.each do |rank|
    suits.each do |suits|
      miniArray=[rank, suits]
      deck.push(miniArray)
    end
  end

  puts deck.shuffle.inspect
#call the fuction
#shuffle the deck


#Collect an array of player names by prompting:

#{}"{n} players so far. Enter a player name, or type 'play':"
players = []

puts "#{players.length} players so far. Enter player name, or type play."
name = gets.chomp.to_s

while (name != "play")
  players.push(name)
  puts "#{players.length} players so far. Enter player name, or type play."
  name = gets.chomp.to_s
end

dealed_card = deck.shuffle.pop(players.length)
puts dealed_card.inspect
#make a loop so that you can enter in as many players as you want
  #record player in a variable
  #count the # of players
  #if player enter play, continue with game
  #else, prompt "n players so far. Enter player name, or type play. " again
