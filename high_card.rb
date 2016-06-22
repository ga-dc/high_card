=begin
Masatoshi Nishiguchi
June 22, 2016
=end

# Load models.
require_relative "./models/game"
require_relative "./models/card"
require_relative "./models/player"

# require 'pry'
# binding.pry

# Create a new game.
game = Game.new

# Build a deck.
game.build_deck

# Invite players.
game.invite_players

# Loop the game play until all cards are gone.
while game.deck.length > game.players.length
  # Deal a card to each player.
  deal_result = game.deal

  # Print the result.
  puts "=" * 60
  deal_result.each do |id, card|
    print Player.find(id).name + " " + card.to_s + "\n"
  end

  # Determine the winner.
  winner_id = game.get_winner(deal_result)

  puts "." * 60 # A separator line

  # If it is a tie.
  if winner_id == -1
    puts "Tie, let's redraw."
    next
  end

  # Give score to the winner.
  score = game.reward_winner(deal_result, winner_id)
  puts "Winner: " + Player.find(winner_id).name + ", Score earned: " + score.to_s
  game.print_current_scores

  puts "." * 60 # A separator line

  # Pause.
  puts "Press ENTER to continue:"
  gets
end

game.print_final_winner
puts "--- THE END ---"
