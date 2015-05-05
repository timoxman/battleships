class Grid

  attr_reader :size

  def initialize size=1
    @size = size
    @grid_arr = []
  end

  def place_ship ship
    @grid_arr << ship
  end

  def grid_array
    @grid_arr
  end

end