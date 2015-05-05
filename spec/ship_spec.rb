require 'ship'

describe Ship do

  context 'a new ship is created' do

    let(:grid) { double :grid }

    it 'ship is placed on a square' do
      grid.place_ship(subject)
      expect(ship.location).to eq grid.square
    end
  end
end