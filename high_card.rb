players = []
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "Hearts", "Spades", "Clubs", "Diamonds" ]
input = nil
players = []
hands = []
deck = []
check = []
w = nil
winner = "hello"

ranks.each_with_index do |rank,index|
  suits.each do |suit|
    deck.push([rank,suit,index])
  end
end
# end

deck.shuffle!
puts deck.inspect

while (input != "PLAY") do
  puts "#{players.length} players so far. Enter a player, name or type 'play' to begin:"
    input = gets.chomp.upcase
        if input != "PLAY"
          players.push(input)
        end
end

      for i in (0..(players.length - 1)) do
          hands.push([players[i],("#{deck[i][0]} of #{deck[i][1]}"), deck[i][2]])
      end
      puts hands.inspect

      for k in (0..(hands.length - 1)) do
        check.push(hands[k][2])
      end

    w = check.max.inspect

    for k in (0..(players.length - 1)) do
        if hands[k][2] == w
          winner = hands[k][0]
        end
    end

puts winner
      # puts "Winner is #{hands[w][0]} with #{hands[w][1]}"
