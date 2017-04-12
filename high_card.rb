# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
select_winner = []




ranks.each_with_index do |rank, score|
  suits.each do |suit|
    card = {
      scores: score,
      ranks: rank,
      suits: suit
    }
    deck.push(card)
  end
end




puts "Would you like to play a game?"
player = gets.chomp
while true
  if player.downcase == "yes"
    while true
    select_winner = []
      puts "\n#{players.length} players so far. Enter a player name, or type \'play\'"
      player = gets.chomp.capitalize
      break if player.downcase == "play"
      players.push({name: "#{player}"})
      puts "player #{players.length}: #{player}"
    end
    deck = deck.shuffle
    for player in players do
      player[:card] = deck.pop
      select_winner << player[:card][:scores]
      puts "\n#{player[:name]} has #{player[:card][:ranks]}(#{player[:card][:suits]})."
    end
    winning_score = select_winner.max
    winner = players.find_all {|player| winning_score == player[:card][:scores]}
    if winner.length == 1
      puts "\n#{winner[0][:name]} is winner!\nPlease enter \'yes\' to play again\nPlease enter \'no\' to quit playing"
      player = gets.chomp
    elsif winner.length > 1
      tie = winner.map {|player| player[:name]}
      puts "It's a tie between #{tie.join(" ,")}\nPlease enter \'yes\' to play again\nPlease enter \'no\' to quit playing"
      player = gets.chomp
    end

    break if player.downcase == "no"

  end
end
