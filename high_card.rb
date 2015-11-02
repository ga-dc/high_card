def make_deck
  number_cards = [ 1,2,3,4,5,6,7,8,9,10,"J","Q","K","A" ]
  suite_cards = ["Heart", "Diamond", "Spade", "Club"]
  full_deck = []

  number_cards.each_with_index do |card, index|
    suite_cards.each do |suite|
      full_deck.push({
        card: card,
        value: index,
        suite: suite})
    end
  end
  return full_deck
end

players = []
shuffled_deck = make_deck.shuffle

while true
  puts "#{players.length} players so far.  Enter a player name, or type 'play':"
  name=gets.chomp

  break if name == 'play'
  players << name
end

#asign each player a card

cards = players.map do |player|
  shuffled_deck.pop
end

top_score = cards.map do |card|
  card[:value]
end

high_score = top_score.max

winners = []
top_score.each_with_index do |score, index|
  winners.push(players[index]) if score == high_score
end

puts "Winners: #{winners.join(', ')}"
