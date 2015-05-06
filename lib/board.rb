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

  attr_accessor :squares
  attr_reader :fleet
  # def fleet
  #   @fleet
  # end

  def place_ship(ship, location, orientation)

    #put the ship in the fleet array
    @fleet << ship

    #Update the board - put the ship on the board at the right location. This will involve changing the correct elements of the squares array from there current value to equal "B" for boat
    if orientation == "V"
      (0..(ship.length - 1)).each{|i| @squares[location + (@dimensions * i)]  = "B" }
    end

    if orientation == "H"
      (0..(ship.length - 1)).each{|i| @squares[location + i] = "B"}
    end

    #Update the ship - save the location of the ship on the ship
    if orientation == "V"
      (0..(ship.length - 1)).each{|i| ship.location[i] = location + (@dimensions * i) }
    end

    if orientation == "H"
      (0..(ship.length - 1)).each{|i| ship.location[i] = location + i }
    end


  end

  def fire location

    case @squares[location]
    when "S"
      @squares[location] = "M"
      return "You missed!"
    when "B"
      @squares[location] = "H"
      find the ship that was hit and remove from the array the locatio from the array which was hit
      if the array is empty the ship sinks, otherwise its just hit.

      return "You've been hit!"
    when "M"
      return "You're a muppet, you already fired there!"
    when "H"
      return "You already hit that square"
    else
      raise "That shot didn't register"
    end


  end

end