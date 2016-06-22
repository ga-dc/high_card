# A class that represents a player.
class Player
  attr_accessor :name, :score, :id

  # Storage for all the instances.
  @@all = []

  def initialize(name)
    # Strip extra whitespace.
    name = name.strip

    # If name is empty, make up a random name.
    name = name.empty? ? Player.random_string : name

    # Capitalize the name.
    @name = name.capitalize

    # Initially score is 0.
    @score = 0

    # Increment the instance count and that becomes the ID (1..n).
    @@all << self
    @id = @@all.length
  end

  # Generates a random string.
  def self.random_string
    ('a'..'z').to_a.shuffle[0..6].join
  end

  def self.find(id)
    result = @@all.select { |p| p.id == id }
    result[0]
  end
end
