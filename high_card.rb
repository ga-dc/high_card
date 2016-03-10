require "pry"


ranks  = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

$players = []


def build_deck (ranks, suits)
    deck = []
      ranks.each_with_index do |rank, index |
        suits.each do |suit|
          card = {
            suit: suit,
            rank: ranks,
            worth: index
          }
          deck << card
        end
      end
          return deck.shuffle
end
# how can I make sure this is working? I can't see the single card.

def choose_players
  while true do
    puts "Enter your name or press 'p' to play"
      name = gets.chomp.downcase #working with strings here
      break if name === 'p'
      $players << name
  end
end


deck = build_deck(ranks, suits)
choose_players


binding.pry
puts "done"
