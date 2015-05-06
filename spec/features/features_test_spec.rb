require 'capybara/rspec'
require 'board'
require 'ship'

feature 'player can play a game of battleships' do

  let(:board1) { Board.new(5) }
  let(:ship1) { Ship.new(3) }

# As a player
# So that I can prepare for the game
# I would like to place a ship in a board location
  scenario 'user can place a ship on the board (F1)' do
    board1.place_ship(ship1,11,"H")
    expect(board1.fleet).to include ship1
    expect(ship1.location[0]).to eq 11
    expect(board1.squares[11]).to eq "B"
    expect(board1.squares[12]).to eq "B"
    expect(board1.squares[13]).to eq "B"
    expect(board1.squares[10]).to eq "S"
    expect(board1.squares[14]).to eq "S"
  end

  scenario 'user can fire at the board (F2)' do
    board1.place_ship(ship1,0,"H")
    expect(board1.fire(0)).to eq "You've been hit!"
    expect(board1.fire(10)).to eq "You missed!"
    expect(board1.fire(10)).to eq "You're a muppet, you already fired there!"
  end

    scenario 'user can fire at a ship and sink it (F3)' do
    board1.place_ship(ship1,0,"H")
    expect(board1.fire(0)).to eq "You've been hit!"
    expect(board1.fire(1)).to eq "You've been hit!"
    expect(board1.fire(2)).to eq "You've been hit and sunk the ship"
  end

end
