# Use these two arrays to generate a deck of cards.
$ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
$suits = [ "hearts", "spades", "clubs", "diamonds" ]

$players = []

$r_ordered = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"]
# 0 to 12
$s_ordered = ["spades","hearts","clubs","diamonds"]
# 0 to 3

def shuffled_deck

  new_deck = []
  $r_ordered.each_with_index do |rank, index|
    $s_ordered.each_with_index do |suit, index_two|
      new_deck.push({
        rank_n: index,
        rank: rank,
        suit_n: index_two,
        suit: suit
        })
      end
    end

    shuffled = new_deck.shuffle
    return shuffled
  end

def collect_players
  number_of_players = 0
  input = ""
  player_array = []
  while input != "play"
    puts "#{number_of_players} so far. Enter a player name, or type 'play'."
    input = gets.chomp.to_s.downcase
    if input != "play"
      player_array.push(input)
      number_of_players += 1
    end
  end
  return player_array
end

def assign_cards_to_players
  s_deck = shuffled_deck # array of cards
  player_array = collect_players # array of players
  players_with_cards = []
  count = 0
  require 'set'
  my_set = Set.new
  while count < player_array.length
    r_number = rand(0..51)
    if !my_set.include? r_number
      my_set.add(r_number)
      player_array.each do |player|
      players_with_cards.push([player,s_deck[r_number]])
    end
    count += 1
  end

  end
  return players_with_cards
end
#################
def determine_winner(compiled_array) # not done
  win_order = []
  highorder = compiled_array.each do |player_card|
    player = player_card[0]
    card = player_card[1]

  end
#################

end

def play_game
  compiled_array = assign_cards_to_players

end

play_game
