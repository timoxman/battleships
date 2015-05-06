class Ship

  def initialize(length)
    @length = length
    @orientation = ""
    @location = [] # this is a list of squares which the ship sits on top of
  end

  attr_reader :length
  attr_accessor :location


end