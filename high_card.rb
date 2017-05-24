require 'pry'

# Use these two arrays to generate a deck of cards.
class Deck
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]

  decks = ranks.product(suits)
  deck_shuffled = decks.shuffle
  deck_shuffled.each do |string_it|
    string_it = string_it.to_s
  end

end


class Users
  attr_accessor :name

  @@players = []

  def initialize(name)
      @name = name
      @@players.push(self)
  end

  def self.add_player
    input = ""
    while input != "menu" do
      puts "Type 'menu' to go back to main menu."
      puts "Player #{@@players.length + 1}, what is your name?"
      input = gets.chomp
      if input == "menu"
        break
      end
      Users.new(input)
      self.show_players
      puts ""
    end
    # Menu.display
  end

  def self.show_players
      @@players.each_with_index do |player, index|
        puts ""
        puts "#{player.name} is player #{index + 1}."
      end
      puts "#{@@players.length} players so far."
    end
  # def self.get_players
  #   return @@players
  # end
end

class Menu
  def self.display
    while 1
      puts ""
      puts "Welcome to High Card!"
      puts ""
      puts "1 - Play"
      puts "2 - Add Player"
      input = gets.chomp
      puts "input is: #{input}"
      if ["1","2"].include? input
        self.select (input)
        # break
      else
        puts "Invalid option"
      end
    end
  end
  def self.select(num)
    # puts "You selected #{num}"
    case num
    when "1"
      # puts "selected 1"
    when "2"
      # puts "calling add_player"
      Users.add_player
      # puts "finished calling add_player"
    else
      # puts "else: #{num}"
    end
  end
end

Menu.display

binding.pry
