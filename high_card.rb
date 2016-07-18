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
        sorted = player_cards.sort_by{|value| value[:card]}
        puts sorted

        # player_cards.sort_by! do |value|
        #   value[:]

          # player_cards.each do |hand|
          #   puts hand
          # end
    end
end
