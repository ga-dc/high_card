# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
winners = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

deck.shuffle!

while true
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  player_name = gets.chomp
  break if player_name == "play"
  players.push(player_name)
end

dealt = players.map do |player|
  deck.pop
end

dealt_value = dealt.map do |dealt|
  if dealt[0][0].is_a?(String) then
    dealt[0][0].gsub(/[JKQA]/, 'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 14).to_i
  else
    dealt[0]
  end
end

highest_dealt = dealt_value.max

dealt_value.each_with_index do |value, index|
  winners.push(players[index]) if value == highest_dealt
end

puts "*" * 50
puts "Winner(s): #{winners}"
puts "*" * 50
