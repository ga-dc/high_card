# Use these two arrays to generate a deck of cards.
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      card = {
        rank: rank,
        suit: suit
      }
      deck << card
    end
  end

deck.shuffle

players = []

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  user_input = gets.chomp

  break if user_input == "play"
  players << user_input
end

cards = players.each do |player|

end
