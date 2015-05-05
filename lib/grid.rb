class Grid

  def initialize
    @grid_arr = []
  end

  def grid_arr
    @grid_arr
  end

  def place_ship ship
    @grid_arr << ship
  end

end