require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"]
suits = [ "hearts", "clubs", "diamonds", "spades" ]

nameofplayers = []

# shuffle both arrays
  deck = ranks.product(suits)
  deck.each { |rank,suit|}
  deck.shuffle!
  p deck

# give me a player names possible solutions would be (while loop possibly)
# ask for the player and get the player with gets
# store player somewhere
# print out an array of players (progress)
# check if player is done
# deal the cards and give each playercards
# add values to each arrays (I need help with this part)
    n = 0
while true
    puts "#{n} players so far. Enter a player name, or type 'play':"
    playername = gets.chomp
    puts playername
    break if playername.upcase == "PLAY"
    nameofplayers.push({name:playername})
    n +=1
end
dealedcards = nameofplayers.map do |player|
  deck.pop
end

puts dealedcards


# then give each player a card (I need help with this part)
# ranks.product(suits).find("A hearts","A spades","A clubs","A diamond") do |pick|
#   if ranks.product(pick)
#     else
#       next
#     end
# end
# calculate the highest card (help)

binding.pry
puts "end of file"
