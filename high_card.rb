deck = []

suits = ["hearts", "spades"]

ranks.each do |rank|
  suits.each do |suit|

  end
end
[
  ["A","hearts"]
]


players = ["Alpha, "Beta"]



dealt cards = [
  [2, "hearts"],
  [3, "hearts"]
]

dealt_cards = []
dealt_cards << shuffled_deck.pop



player_0_card = dealt_cards[0]
player_1_card = dealt_cards[1]

player_0_card_rank = player_0_card[0]
player_1_card_rank = player_1_card[0]
if player_0_card rank > player_1_card_rank
  puts "#{players[1]} wins!"

elseif

else
  puts "It's a tie"


def compare_cards(card_one, card_two)

end

compare_cards()


ranks = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
suits = %w{Spades Hearts Diamonds Clubs}
suits.each do |suit|
  ranks.size.times do |i|
    stack_of_cards << Card.new( ranks[i], suit, i+1 )
  end
end
