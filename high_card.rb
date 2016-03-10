require 'pry'

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

def build_deck(ranks, suits)



    deck = []
      ranks.each_with_index do |rank, index|
        suits.each do |suit|
          card = {
            suit: suit,
            rank: rank,
            worth: index
          }
          deck << card
        end
      end
    return deck.shuffle
  end

while true
  puts "#{players.length} so far. Enter a player name, or type 'play'"
  name = gets.chomp

  break if name == 'play'
  players << name
end


=begin
#dealing cards to each players
players.each do |player|
  #deals random card from deck array
  player_card = deck.sample
  player_card[:player] = player
  #insert random cards into array
  hands.push(player_card)
  #removes the card from deck array
  deck = deck - [player_card]
end

#find winner
win_card = hands.max do |hand|
    hand[:index]
end

#declare the winner
puts hands
puts "#{winning_card[:player]} won with the #{{{winning_card[:rank]} of #{winning_card[:suit]}}}"

shuffledeck = build_deck(ranks,suits)
binding.pry
puts "fixes pry error"
