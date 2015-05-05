class Player
  attr_reader :player_ships

  PLAYER_SHIPS = {'ship1' => 6, 'ship2' => 4, 'ship3' => 3, 'ship4' => 3, 'ship5' => 3, 'ship6' => 2, 'ship7' => 2, 'ship8' => 2}

  def initialize
    @player_ships = PLAYER_SHIPS
  end

  def place_ship ship
    @grid.grid_arr << ship
  end

end