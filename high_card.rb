# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

DEBUG = true

TIE_MARKER = "# " * 5
ROUND_MARKER = "\n" + "* " * 25 + "\n\n"

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

puts "Deck created and shuffled."

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

puts "\nPlayers: " + players.join(", ")

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
  puts ROUND_MARKER + "Round \##{round.to_s}. #{deck.length} cards left in the deck and #{players.length} players."
  while deck.length >= players.length do
    cards_on_table = []
    players.each do |player| # each player gets a card
      card = deck.pop
      puts "#{player} plays #{card[0]} of #{card[1]}."
      cards_on_table.push([get_rank_value(card[0]), player])
    end
    win = cards_on_table.map { |card| card[0] }.max # make an array of the card ranks and get the max
    if cards_on_table.map { |card| card[0] }.find_all { |val| val == win }.length > 1
      # if more than one of the card ranks is the max, then we have a tie
      winners = cards_on_table.find_all { |card| card[0] == win }.map { |card| card[1] }.join (" and ")
      # get all the cards with the winning rank value and map those cards to just the player names
      puts TIE_MARKER + "WHOA! Tie between #{winners}!\n\n"
      if deck.length >= players.length then puts "Round \##{round} continues."
      else next end
    else
      puts "The winner is #{cards_on_table.find { |card_and_winner| card_and_winner[0] == win }[1]}."
      break
    end
  end
end
puts "\nRan out of cards! (#{deck.length} card(s) leftover.)"
