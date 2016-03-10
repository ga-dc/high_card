require 'pry'
Ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
Suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []



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

def choose_players
  while true do
      puts "Welcome. Enter your name or press 'p' to play"
      name = gets.chomp.downcase # working with strings
    break if name == 'p'
    $players << name
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

binding.pry
puts "fixes pry error"
