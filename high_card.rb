ranks = [["A", 13], [2, 1], [3, 2], [4, 3], [5, 4], [6, 5], [7, 6], [8, 7], [9, 8], [10, 9], ["J", 10], ["Q", 11], ["K", 12]]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits).shuffle
drawn = []
players = []

while true

    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    input = gets.chomp
    
    if input == "break"
      break
  
    elsif input == "play"
      index = 0
      players.each do |player|
        hash = {}
        hash[:name] = player
        hash[:card] = deck.pop
        drawn << hash
        puts "#{players[index]} was dealt #{drawn[index][:card][0][0]} of #{drawn[index][:card][1]}"
        puts drawn[index][:card][0][1]
        index += 1
      end
    winner = drawn.max {|a, b| a[:card][0][1] <=> b[:card][0][1]}
    puts winner[:name]
        
      
      
    elsif input != "play" 
      players << input
    end
end