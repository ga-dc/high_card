# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "diamonds", "clubs", "spades" ]
cards = []
players = []

def build_deck ranks, suits, cards
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      cards.shuffle! << [rank, suit, i]
    end
  end
end

playr = ""
while playr
  puts "Enter player name, or type 'play'"
  playr = gets.chomp
  if playr == 'play'
    break
  end
  players.push({name: playr})
end

def deal cards, players
  players.each_with_index do |player, i|
    player[:card] = cards[i]
  end
end
puts players.inspect

def compare players
  players.sort_by!{|player| player[:card][2]}
  puts "The Winner is #{players[-1][:name]}"
end


build_deck ranks, suits, cards
deal cards, players
compare players 