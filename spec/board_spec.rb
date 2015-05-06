require 'board'

describe Board do

  context 'begin a new game' do

    let(:ship1) { double :ship }

    it 'allows a ship to be placed anywhere on a board (UB1)' do
      board1 = Board.new(3)
      board1.place_ship(ship1,2,"V")
      #subject.place_ship(ship) - when to use subject?
      expect(board1.fleet).to include ship1
    end

    #this test is similar to our feature test
    it 'has placed the ship at a specified location (UB2)' do
      board1 = Board.new(3)
      board1.place_ship(ship1,2,"V")
      expect(board1.squares[2]).to eq "B"
    end

  end

end