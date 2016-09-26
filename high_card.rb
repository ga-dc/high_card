# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10 ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = suits.map do |suit|
  set = ranks.map do |rank|
    [rank, suit]
  end
end


deck.flatten!(1).shuffle!

loop do
  puts "#{players.length} players so far. Enter a player name, or press enter:"
  input = gets.chomp
  break if input == ""
  players << {name: input}
end

players.each do |player|
  player[:card] = deck.pop
  puts "#{player[:name]} gets the #{player[:card][0]} of #{player[:card][1].capitalize}"
end

winner = players.reduce do |p1, p2|
  ranks = [p1[:card][0], p2[:card][0]]
  ranks.map! do |value|
    newVal = case value
      when "J" then 11
      when "Q" then 12
      when "K" then 13
      when "A" then 14
      else value
    end
  end
  ranks[0] > ranks[1] ? p1 : p2
end

puts "---"
puts "#{winner[:name]} wins with a #{winner[:card][0]} of #{winner[:card][1].capitalize}"
