require "pry"

def build_deck
@values = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]
@deck = []

@values.each_with_index do |v, i| #each_with_index, adds index value to each item in array
  @suits.each do |s|
    @deck.push({score: i, value: v, suit: s})
  end
end
return @deck.shuffle!
end

deck = build_deck #call the build_deck method

@players = []
def get_players players
  user_input = ''
  while user_input != 'play'
    puts "The current number of players is #{players.length}. Enter a player name, or type 'play'."
    user_input = gets.chomp
    if user_input != 'play'
      players << user_input # push names into players array
    end
  end
end
get_players(@players) # pass in players variable

def player_card players
  @cards = players.map do |player|
    @deck.pop
    puts "this is the #{@deck.pop} value for #{player}"
    end
end
player_card(@players)

scores= @cards.map do |card|
  card[:score]
  puts "this is the scores #{card} value"
end


binding.pry
