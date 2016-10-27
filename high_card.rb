# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []

def build_deck ranks, suits, deck
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      deck << [rank, suit, index]
    end
  end
  deck.shuffle!
end

def enter_players players
  answer = ""
  loop do
    puts "#{players.length} players so far. Enter a player name, or type 'play':"
    answer = gets.chomp
    break if answer == "play"
    players << {name:answer}
  end
end

def deal_cards players, deck
  players.length.times do |index|
    players[index].merge!(card: deck[index])
  end
end

def sort_deck players
  players.sort_by! { |player| player[:card][2]}
end

def win_game players, deck
  winners = players.select { |player| player[:card][2] == players.last[:card][2]}
  if winners.length > 1
    puts "It's a tie between #{winners.map{|winner| winner[:name]}.join(" and ")}. Time to redeal."
    deck.shuffle!
    deal_cards players, deck
    sort_deck players
    win_game players, deck
  else
    puts "The winner is #{players.last[:name]}!"
  end
end

build_deck ranks, suits, deck
enter_players players
deal_cards players, deck
sort_deck players
win_game players, deck

# values = []
# players.each do |player|
#   values << player[:card][2]
# end
#
# winner = players[values.index(values.max)]
#
# puts "The winner is #{winner[:name]}!"
