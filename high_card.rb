# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


# creates empty arrays
$cards = []
$players = []


#creating an array with every possbiel card on a full deck
$cards = ranks.product(suits)
#shuffling
$cards.shuffle!







puts "#{$players.length} players so far. Enter a player name, or type 'play'"
input = gets.chomp


while input !="play" do

  $players.push({name: input})
puts "#{$players.length} players so far. Enter a player name, or type 'play'"
input = gets.chomp
end



#Method Name:   give_cards
#description:   gives a card to each player
#input:         none
#output:        none
def give_cards ()
  $players.length.times  do |index|
      $players[index][:card_type] = $cards.last
      $cards.pop
  end
end


#Method Name:   winners
#description:   gives suits a value returning a copy players array
#input:         none
#output:        copy players array with numbers instead of letters
def converter ()






  player_scores = $players.map do |player|

    if player[:card_type][0] =="A"
      # player[:card_type][0]=14
      {
        name: player[:name],
        score: 14
      }
    elsif player[:card_type][0] =="J"
      {name: player[:name],
      score: 11}
    elsif player[:card_type][0] =="Q"
      {name: player[:name],
      score: 12}
    elsif player[:card_type][0] =="K"
      {name: player[:name],
      score: 13}
    else
      {name: player[:name],
      score: player[:card_type][0]}
    end

  end


# copy_players.length.times do |index|
#     if copy_players[index][:card_type][0] =="A"
#       copy_players[index][:card_type][0]=14
#     elsif copy_players[index][:card_type][0] =="J"
#       copy_players[index][:card_type][0]=11
#     elsif copy_players[index][:card_type][0] =="Q"
#       copy_players[index][:card_type][0]=12
#     elsif copy_players[index][:card_type][0] =="K"
#       copy_players[index][:card_type][0]=13
#     else
#     end
# end




player_scores
end


#-------------------------------------------------------------

def winners(converted_players)
top = converted_players[0][:score]
winners_indexes=[]
winners_people = []


converted_players.length.times do |index|
      if (converted_players[index][:score]>top)
        top = converted_players[index][:score]
      end
end


converted_players.length.times do |index|
      if (converted_players[index][:score]==top)
        winners_indexes.push(index)
        winners_people.push(converted_players[index])
      end
end


winners_people
end#end of winners function




give_cards()
x = converter()
puts x
puts "-------------"
y = winners(x)


if(y.length==1)
puts "Winner is : -------------"
puts y[0][:name]
end

if(y.length>1)
  puts "Winners are : -------------"
  y.length.times do |index|
  puts y[index][:name]
  end
end
