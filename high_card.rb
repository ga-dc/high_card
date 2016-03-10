require 'pry'
# Use these two arrays to generate a deck of cards.
Ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
Suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []



def build_deck(ranks, suits)
    deck = []
    # loop through ranks
      # .each with index -> to pull the worth of a card
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

def choose_players
  while true do
      puts "Welcome. Enter your name or press 'p' to play"
      name = gets.chomp.downcase # working with strings
    break if name == 'p'
    $players << name
      # player_1 = $players[0]
      # player_2 = $players[1]
    break
  end
end



2.times {choose_players}



 def playerDeck
  deck = build_deck(Ranks, Suits)
  return deck.each_slice( (deck.size/2.0).round ).to_a
 end
  firstplayer = $players[0]
  secondplayer = $players[1]
  firsthand = playerDeck[0]
  secondhand = playerDeck[1]
  puts "Player One #{firstplayer} \n #{firsthand}"
  puts "Player Two #{secondplayer} \n #{secondhand}"

  # deck = build_deck(Ranks, Suits)
  # highcard= deck.max
  # puts "#{highcard}"
  # if $players[0].include? highcard
  #   puts "#{firstplayer} is the winner"
  # else
  #   puts "#{secondplayer} is the winner"
  # end





# def hand
# player_1 = $players[0]
# player_2 = $players[1]
#
# puts $players[0] deck
# end

# def playCards


  # while true do
  #   player_1, player_2 =
  # break
  # end
  # return playCards
# end


binding.pry
puts "fixes pry error"
