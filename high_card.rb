def deck_of_cards
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  ranks.each_with_index do |value, score|
    suits.each do |suit|
      deck.push({
        score: score,
        value: value,
        suit: suit,
      })
    end
  end
  return deck.shuffle
end

deck = deck_of_cards
players = []

while true
  puts "#{players.length} players. Enter a name, or type play"
  name = gets.chomp
  break if name == "play"
  players.push(name)
end
