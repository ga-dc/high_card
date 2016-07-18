# Use these two arrays to generate a deck of cards.
$players = []
$cards = []

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

$deck = []
suits.each do |suit|
    ranks.each do |rank|
        $deck.push([suit, rank])
    end
end
puts $deck.inspect

def play()
    play = true
    $deck = $deck.shuffle
    $players.each do |player|
        $cards.push($deck.sample)
    end
    puts $cards.inspect
    $winner = $cards.each_with_index.max[1]
    puts $players[$winner] + ' is the winner!'
    $players = []
    $cards = []
end

play = false
while play == false
    puts $players.length.to_s + ' players have signed up enter your name to play!'
    input = gets.chomp
    if input != 'play'
        $players.push(input)
    else
        play()
    end
end
