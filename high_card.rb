# Use these two arrays to generate a deck of cards.
ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

def rank_to_worth( rank )
  dictionary = {
    "2" => 1,
    "3" => 2,
    "4" => 3,
    "5" => 4,
    "6" => 5,
    "7" => 6,
    "8" => 7,
    "9" => 8,
    "10" => 9,
    "J" => 10,
    "Q" => 11,
    "K" => 12,
    "A" => 13
  }
  dictionary[ rank ]
end

ranks.map! do |rank|
  puts "#{rank} : #{rank_to_worth(rank)}"
end
