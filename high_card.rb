# Use these two arrays to generate a deck of cards.
require "pry"

#1 Create the deck (object) with value, worth, and suit
def build_deck
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  ranks.each_with_index do |r, i|
    suits.each do |s|
      deck << ({value: r, worth: i, suit: s })
    end
  end
  return deck.shuffle
end

deck = build_deck


#2 Get player
players =[]
  while true do
    puts "Add a name of the player, when there is enough player type done"
    name = gets.chomp
    if name == "done"
      break
    end
    players << name
    puts players.inspect
  end

#3 Distribute Card from deck to players
playingcards = []
players.each do |name|
  card = deck.pop
  card[:player] = name
  playingcards << card
  puts playingcards.inspect
end


#4 Find highest score
highcard = playingcards.max {|a,b| a[:worth]<=>b[:worth]}

#5 announcewinner
puts "winner is #{highcard[:player]}"


binding.pry

puts "end of file"
