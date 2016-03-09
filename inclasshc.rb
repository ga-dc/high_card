require "pry"

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []

deck = [  {rank: "A", suits: "Hearts", worth: 12}]
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

#players is a hash
  def choose_players
    while true do
      puts "Welcome! Enter name to play or press 'p' to play"
      name = gets.chomp.downcase #working w strings
      break if name == 'p'
      #save name to game
      $players << name
    end
  end

  deck = build_deck(ranks, suits)
  choose_players
  binding.pry
  puts "fixes pry error"
