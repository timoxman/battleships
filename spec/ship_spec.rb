require 'ship'

describe Ship do

  it 'is placed on the board and so has a location (US1)' do
    dummyboard = Board.new(12)
    ship1 = Ship.new(2)
    dummyboard.place_ship(ship1,0,"V")
    expect(ship1.location[0]).to eq 0
    end

end