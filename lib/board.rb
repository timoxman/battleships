class Board

  def initialize(dimensions)
    #this is an array of single char strings which represent each square on the board
    # S = its sea
    # B = Its a ship/boat
    @squares = []
    (dimensions ** 2).times { @squares << "S" }

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

    #put the ship on the board at the right location. This will involve changing the correct elements of the squares array from there current value to equal "B" for boat
    @squares[location] = "B"
    @squares[location+dimensions] = "B"


  end

end