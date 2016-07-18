# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck =[]
ranks.each do |rank|
  suits.each do |suit|
    #deck.push((rank.to_s + " " + suit).split(' '))
    deck << [rank, suit]
  end
end
deck = deck.shuffle
players = []
response =''

while true
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  response = gets.chomp
  if response.downcase == "play"
    break
  end
  players << response
end
puts ''
puts players
