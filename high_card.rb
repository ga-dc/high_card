require 'pry'

class Cards
  #deck and shuffle
  def self.deck
    ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    decks = ranks.product(suits)
    return decks.shuffle
    Cards.game_players
  end

  #collect names
  def self.game_players
    players = []
    puts "#{players.length} players so far. Enter a player #{name}, or type 'play':"
    input = gets.chomp
    while input == name do
      players.push(input)
    end

    #to deal each player a card
    cards = players.map do |name|
      decks.pop
    end

    #to find the highest score
    decks.max_by do |element|
      element.field
    end

    winner_of_game = element.max

    #find the winning player
    winner_of_game = []
    scores.each_with_index do |value, index|
      winner_of_game.push(names[index]) if value == winner_of_game
    end

  end
end
binding.pry
