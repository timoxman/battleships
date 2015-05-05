require 'player'

describe Player do

  context 'Player chooses a ship' do

    it 'allows a ship to be placed on a square' do
      subject.place_ship(ship)
      expect(subject.grid_arr.include?(ship)).to eq true
    end
  end
end