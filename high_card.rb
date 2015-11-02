# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# create empty array for deck
deck = []

suits.each do |suit|
  thisSuit = "#{suit}"
  ranks.each_with_index do |rank, index|
    card =  ["#{rank}, #{thisSuit}"]
    deck.push(card)
  end
end

# shuffle deck
deck.shuffle
#
class Play
  # attr_accessor :numberOfPlayers


  numberOfPlayers = 0

  # def self.numberOfPlayers
  #   return @@numberOfPlayers
  # end
  prompt = "#{numberOfPlayers} players so far. Enter a player name, or type 'play':"

  puts prompt

  input = gets.chomp
  if input==="play"
    puts "yes"
  else
    numberOfPlayers = numberOfPlayers + 1
    puts prompt
  end


end
