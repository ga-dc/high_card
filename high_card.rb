# Variables to refer to later
check = []
deck = []
hands = []
input = nil
players = []
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "Hearts", "Spades", "Clubs", "Diamonds" ]
winhand = nil
winplay = nil
# Create Deck from rank & suit arrays
ranks.each_with_index do |rank,index|
  suits.each do |suit|
    deck.push([rank,suit,index])
  end
end
# Shuffle Deck
deck.shuffle!
# Solicit Player Names
while (input != "PLAY") do
  puts "#{players.length} players so far. Enter a player, name or type 'play' to begin:"
    input = gets.chomp.upcase
        if input != "PLAY"
          players.push(input)
        end
end
# Assign Card to Players
  for i in (0..(players.length - 1)) do
    hands.push([players[i],("#{deck[i][0]} of #{deck[i][1]}"), deck[i][2]])
  end
# Create Array Corresponding to Player's Index Values & Check Max
  for k in (0..(hands.length - 1)) do
    check.push(hands[k][2])
  end
w = check.max
# Assign Winning Hand
  for k in (0..(players.length - 1)) do
    if hands[k][2] == w
        winplay = hands[k][0]
        winhand = hands[k][1]
    end
  end
# Log Winner and All Hands
    puts "Winner, Winner, Chicken Dinner! #{winplay} won with #{winhand} high!"
# Log Hands without index
    for l in (0..(players.length - 1)) do
      puts ("#{hands[l][0]} had a #{hands[l][1]}")
    end
