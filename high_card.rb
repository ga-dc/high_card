# Use these two arrays to generate a deck of cards.

    ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    deck = []
    players = []


    ranks.each do |rank|
      suits.each do |suit|
        deck.push([rank,suit])
      end
    end

    deck.shuffle

# prompt to get players or to play the game

# push players into players arrays

def player_get_play
  # players = []  how do i make this not reset everytime?  If moved outside, outside scope
  puts "#{players.length} players so far, please enter name or type play:"
  type = gets.chomp
  if type != "play"
      players.push(type)
      player_get_play
  elsif type == "play"
    # play method
  end
end

player_get_play

    # deal cards
    # compare cards
    # else high card wins
