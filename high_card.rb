# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

DEBUG = true

deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck.push([rank, suit])
  end
end

deck.shuffle!

deck.each do |card|
  # puts "[" + card[0].to_s + ", \"" + card[1].to_s + "\"]"
  puts card[0].to_s + " of " + card[1].to_s
end

if DEBUG then players = ["John", "Paul", "George", "Ringo"] else
  loop do
    # puts "Enter the name of player \##{(players.length + 1)}."
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    puts "Type \"play\" if you have enough players." if players.length > 1
    input = gets.chomp
    if input == "play" then break
    elsif input != "" then players.push(input) end
  end
end

puts "Players: " + players.join(", ")

def get_rank_value(rank)
  return 14 if rank == "A"
  return 13 if rank == "K"
  return 12 if rank == "Q"
  return 11 if rank == "J"
  return rank
end

def compare_ranks(rank1, rank2)
  return 1 if get_rank_value(rank1) > get_rank_value(rank2)
  return 2 if get_rank_value(rank1) < get_rank_value(rank2)
  return 0
end

round = 0
while deck.length >= players.length do
  round += 1
  puts "*" * 20 + "\n" + "Round #{round.to_s}. #{deck.length} cards left in the deck and #{players.length} players."
  loop do
    cards_on_table = []
    players.each do |player|
      card = deck.pop
      puts "#{player} plays #{card[0]} of #{card[1]}."
      cards_on_table.push([get_rank_value(card[0]), player])
    end
    win = cards_on_table.map { |card| card[0] }.max
    if cards_on_table.map { |card| card[0] }.find_all { |val| val == win }.length > 1
      puts "Tie! Round #{round.to_s} continues."
      next
    else
      puts cards_on_table.find { |card_and_winner| card_and_winner[0] == win }[1] + " just won!"
      break
    end
  end
end
puts "Ran out of cards! (#{deck.length} card(s) leftover.)"
