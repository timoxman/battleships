require 'grid'

describe Grid do

  context 'begin a new game' do

    let(:ship) { double :ship }

    it 'allows a ship to be placed on a square' do
      subject.place_ship(ship)
      expect(subject.grid_arr.include?(ship)).to eq true
    end

  end

end