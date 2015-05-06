class Board

  def initialize
    @grid = []
  end

  def grid
    @grid
  end

  def place_ship ship
    @grid << ship
  end

end