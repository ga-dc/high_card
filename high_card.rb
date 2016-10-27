# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks.shift
ranks.push("A")

@players = []
@playernumber = 0
deck = []

ranks.each_with_index do |rank, idx|
  suits.each do |suit|
    deck << [rank, suit, idx]
  end
end

@shuffled_deck = deck.shuffle


def playgame
  puts "dealing cards"
  @players.each do |player|
    puts "#{player[:name]} has #{player[:card][0]} of #{player[:card][1]}"
    puts "and"
  end
end

def getwinner
  winner = @players.max {|a| a[:card][2]}
  puts "#{winner[:name]} has the high card"
end


def gameintro
  while @players.length < 2
puts "#{@players.length} players so far. Enter a player name, or type play"
response = gets.chomp
  @players << {name: response, card:@shuffled_deck[@players.length]}
if
   response == "play"
   playgame
 end
 end
 end

gameintro
playgame
getwinner
