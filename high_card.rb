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
  $the_deck = deck_shuffled
end


class Users
  attr_accessor :name

  @@players = []
  $the_players = @@players

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
  end

  def self.show_players
      @@players.each_with_index do |player, index|
        puts ""
        puts "#{player.name} is player #{index + 1}."
      end
      puts "#{@@players.length} players so far."
  end


end


class Play
  # attr_accessor :name, :players, :add_player
  def self.deal_cards
    # puts $the_players.inspect
    $the_players.each_with_index do |name, deal, index|
      deal = $the_deck.sample
      puts "#{name.name} was delt #{deal}"
      # puts deal.max
      # puts "#{deal}"
      # STUCK trying to compare the different hands
      # deck.push($the_players)
    end
    puts $the_players.inspect
    # puts "#{deal}"
  end

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
      if ["1","2"].include? input
        self.select (input)
        # break
      else
        puts "Invalid option"
      end
    end
  end
  def self.select(num)
    case num
    when "1"
      Play.deal_cards
    when "2"
      Users.add_player
    end
  end
end

Menu.display

binding.pry
