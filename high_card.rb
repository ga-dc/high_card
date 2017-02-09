require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

class String
  def initial
    self[0,1]
  end
  def change_initial(letter)
    self[0,1] = letter
  end
end

$cardArray = ranks.map{|rank| suits.map{|suit| "#{rank} of #{suit}"}}.flatten(1)
$players = []

def ask_player
  puts "#{$players.length} players so far. Enter a player name, or type 'play' if you are ready to play:"
  user_input = gets.chomp
  if user_input.downcase == "play"
    $cardArray.shuffle!
    $players.map!.with_index{|player,i| player[:card] = $cardArray[i]; player}

    $players.each do |element|
    puts "#{element[:name]} has been dealt the #{element[:card]}."
    end

    $players = $players.sort_by{|element|
       if element[:card].initial == '1'
          element[:card].change_initial("I");
       end
       if element[:card].initial == 'K'
          element[:card].change_initial("R");
       end
       if element[:card].initial == 'A'
          element[:card].change_initial("S");
       end;
       element[:card]
    }

    $players.each do |element|
      if element[:card].initial == "I"
         element[:card].change_initial("1")
      end
      if element[:card].initial == 'R'
         element[:card].change_initial("K");
       end
      if element[:card].initial == 'S'
         element[:card].change_initial("A");
      end;
    end
    puts "#{$players[$players.length-1][:name]} is the winner!"

  else
    $players<<{name: "#{user_input.capitalize}"}
    ask_player
  end

end

binding.pry
