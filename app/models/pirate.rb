class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight.to_i
    @height = height.to_i
    @@all << self
  end

  def self.all
    @@all
  end

end
