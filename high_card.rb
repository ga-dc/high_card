require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"]
suits = [ "hearts", "clubs", "diamonds", "spades" ]

nameofplayers = []
scored_ranks =[]
scored_suits = []

# shuffle both arrays
# assign score to the ranks and suits
# calculate the highest card (need help figuring this piece out. my solution isn't turning out how I hoped it would)
  ranks.each_with_index do |val, index|
        scored_ranks.push({
          rank: val,
          score: index,
        })
  end

  suits.each_with_index do |val, index|
        scored_suits.push({
          suits: val,
          score: index,
        })
  end
  deck = scored_ranks.product(scored_suits)
  # deck = ranks.product(suits)
  deck.each { |rank,suit|}
  deck.shuffle!
  p deck

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

binding.pry
puts "end of file"
