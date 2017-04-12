
deck = []
player = []
suits = %w[ Hearts Diamonds Clubs Spades ]
values = %w[ Ace 2 3 4 5 6 7 8 9 10 Jack Queen King ]
suits.each do |suit|
  values.each do |value|
    deck << "#{value} of #{suit}"
  end
end
deck.shuffle!
puts deck

while true
puts "#{player.length} so far. Enter a player name, or type: play"
name = gets.chomp

break if name == "play"
player.push(name)
end





