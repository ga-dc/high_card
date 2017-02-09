# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = ranks.product(suits)
deck.shuffle!

players = []

winners = []


while true
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  input = gets.chomp
  if input != "play"
    puts "#{input.capitalize} has joined the game."
    players << input.capitalize
  elsif input == "play"
    puts "\n"
    puts "LET'S PLAY"
  break
  end
end

while winners.length != 1
  if deck.length > players.length
    cards_in_play = players.map do |player|
      deck.pop
    end
  else
    puts "There aren't enough cards in the deck! I guess we can't play."
    break
  end

  index = 0
  while index < players.length
    puts "#{players[index]} was dealt the #{cards_in_play[index]}"
    index += 1
  end

  index = 0
  num_values = []
  string_values = []
  total_values = []
  sorted_values = []
  while index < cards_in_play.length
    if cards_in_play[index][0].is_a?(Numeric)
      num_values << cards_in_play[index][0]
    else
      string_values << cards_in_play[index][0]
    end
    total_values << cards_in_play[index][0]
    index += 1
  end

  sorted_values = num_values.sort + string_values.sort


  if sorted_values.any? {|value| value == "A"}
    winning_value = "A"
  elsif sorted_values.any? {|value| value == "K"}
    winning_value = "K"
  else
    winning_value = sorted_values.last
  end

  index = 0
  winners = []
  while index < total_values.length
    if total_values[index] == winning_value
      winners << players[index]
    end
    index += 1
  end

  if winners.length > 1
    puts "\nWe have a tie! #{winners}"
    puts "\nTIE BREAKER TIME"
    players = winners
    cards_in_play = players.map do |player|
      deck.pop
    end
  else
    puts "\nWe have a winner! #{winners}"
  end
end
