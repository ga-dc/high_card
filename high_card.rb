def deck_of_cards
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  ranks.each_with_index do |v, i|
    suits.each do |s|
      deck.push({
        score: i,
        rank: v,
        suit: s,
      })
    end
  end

  return deck.shuffle
end

deck = deck_of_cards
players = []

while true
puts "We've got #{players.length} in here. If you want in, type your name. Otherwise just type play."
name = gets.chomp

break if name == "play"
players.push(name)
end
