# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck.push (suit.to_s)
    deck.push (rank.to_s)
  end
end

deck_of_cards = deck.each_slice(2).to_a
shuffled_deck = deck_of_cards.shuffle

number_of_players=0
player_names = []
input = " "

while input != "play"
  puts "#{number_of_players} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  player_names << input
  number_of_players+=1
end


if player_names[player_names.length-1] = "play"
  player_names.pop
    player_names.each do |player|
      player_cards = {}
      player_cards[:name] = player
      player_cards[:card] = shuffled_deck.sample.pop
          if player_cards[:card] == "J"
             player_cards[:card] = 11
          elsif player_cards[:card] == "Q"
            player_cards[:card] = 12
          elsif player_cards[:card] == "K"
            player_cards[:card] = 13
          elsif player_cards[:card] == "A"
          player_cards[:card] = 14
          end
        player_cards[:card] = player_cards[:card].to_i
        array_cards = player_cards.to_a
        puts player_names[0] + " is the winner! Wooo!"
    end
end
