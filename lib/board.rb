class Board

  def initialize(dimensions)
    #this is an array of single char strings which represent each square on the board
    # S = its sea
    # B = Its a ship/boat
    @squares = []
    (dimensions ** 2).times { @squares << "S" }
    @dimensions = dimensions
    #this is an array of ships placed on the board
    @fleet = []
  end

  attr_reader :squares
  attr_reader :fleet
  # def fleet
  #   @fleet
  # end

  def place_ship(ship, location, orientation)

    #put the ship in the fleet array
    @fleet << ship

    #Update the board - put the ship on the board at the right location. This will involve changing the correct elements of the squares array from there current value to equal "B" for boat
    if orientation == "V" && ship.length == 2
      @squares[location] = "B"
      @squares[location + @dimensions] = "B"
    end

    #Update the ship - save the location of the ship on the ship
    if orientation == "V" && ship.length == 2
      ship.location[0] = location
      ship.location[1] = location + @dimensions
    end

  end

end