
# require "pry"

# Use these two arrays to generate a deck of cards

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks.push(ranks.shift)
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

ranks.each_with_index do |rank, index|
suits.each do |suit|
  deck << [rank, index, suit]
end
end



loop do
    puts "#{players.length} players are currently playing.  Please type player name or type play to begin"
    player = gets.chomp
    if player != "play"
      players << {name:player, card:deck.sample}
    end
  break if player == "play"
end

players.each do |player|
  player[:card] = deck.shift
end

winning_player = players.max_by do |player|
  player[:card][0]
end

puts winning_player



# binding.pry
