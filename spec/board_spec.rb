require 'board'

describe Board do

  context 'begin a new game' do

    let(:ship) { double :ship }

    it 'allows a ship to be placed on a square' do
      subject.place_ship(ship)
      expect(subject.grid).to include ship
    end

  end

end