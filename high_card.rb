# Use these two arrays to generate a deck of cards.

$winning_card = nil
$second_winning_card = nil
$players = []

$r_ordered = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
# 0 to 12
$s_ordered = ["clubs", "diamonds", "hearts", "spades"]
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

def collect_players # fix this
  number_of_players = 0
  input = ""
  player_array = []
  while input != "play"
    puts "#{number_of_players} so far. Enter a player name, or type 'play'."
    input = gets.chomp.to_s.downcase
    if input == "play"
      break
    end
    player_array.push(input)
    number_of_players += 1
  end
  return player_array
end

def assign_cards_to_players
  s_deck = shuffled_deck # array of cards
  player_array = collect_players # array of players
  # puts player_array.length
  players_with_cards = []
  require 'set'
  my_set = Set.new
  random_array = []
  while (random_array.length < player_array.length) do
    r_number = rand(0..51)
    if !my_set.include?(r_number)
      my_set.add(r_number)
      random_array << r_number
    end
  end
  # puts random_array.length
  player_array.each_with_index do |player,index|     players_with_cards.push([player,s_deck[random_array[index]]])
  end
  return players_with_cards
end
#################
def determine_winner(compiled_array) # not done
  # max_order = []
  winner_order = [] ## left to right
  max_value = 0;
  max_suit = 0;
  compiled_array.each do |player_card|
    player = player_card[0]
    value = player_card[1][:rank_n]
    suit = player_card[1][:suit_n]
    if value > max_value
      max_value = value
      winner_order = []
      winner_order.unshift(player)
      $winning_card = player_card[1]
      $second_winning_card = nil
    elsif value == max_value
      if suit > max_suit
        max_value = value
        winner_order = []
        winner_order.unshift(player)
        $winning_card = player_card[1]
        $second_winning_card = nil
      elsif suit < max_suit
        # temp_winner = winner_order.shift
        # winner_order.unshift(player)
        # winner_order.unshift(temp_winner)
        winner_order << player
        $second_winning_card = player_card[1]
      end
    end
  end
    # max_order.push([value,suit])
  return winner_order
end
################
def play_game
  compiled_array = assign_cards_to_players
  determine = determine_winner(compiled_array)
  puts "Players and their cards: #{compiled_array}."
  if determine.length > 1
    puts "Winner followed by tie loser: #{determine}."
  else
    puts "Winner: #{determine}."
  end
  puts "The winning card is #{$winning_card}."
  if $second_winning_card
    puts "The tie losing card is #{$second_winning_card}."
  end
end

play_game
