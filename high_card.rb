# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck=[];
ranks.each do |rank|
  suits.each do |suit|
    deck.push({
      ranks: rank,
      suits: suit
      })
  end
end

# shuffle the cards
shuffledDeck=deck.shuffle;

# collection of player arrays
players=[];
user_input=0;
while user_input!= "play"
  puts "#{players.length} players so far. Enter a player name or type 'play':";
  user_input=gets.chomp;
  if user_input=="play"
    break;
  end
  players.push(user_input);
end

# each players gets a card
result=[];
    players.each_with_index do |player, index|
      result.push({
        player: player,
        card: shuffledDeck[index]
        });
    end

# comparing card values
