# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
cards = []
players = []

ranks.each_with_index do |rank,i|
  suits.each do |suit|
    cards.push("#{rank}, #{suit}, #{i}")
  end
end

counter = 0
while (counter < 5 ) do
  puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
    input = gets.chomp.to_s.upcase
if
  input == "PLAY"
    break
end
  players.push(input)
  counter = counter + 1
end

player_cards = cards.shuffle.pop(players.length)
bestcard = player_cards.max
  players.each do |player|
    puts player + " got a " + player_cards.first
    player_cards.shift
end
    puts "#{bestcard} wins!"
