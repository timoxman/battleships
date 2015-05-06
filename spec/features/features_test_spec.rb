require 'capybara/rspec'
require 'board'
require 'ship'

feature 'player can play a game of battleships' do

  let(:board1) { Board.new(3) }
  let(:ship1) { Ship.new(2) }

# As a player
# So that I can prepare for the game
# I would like to place a ship in a board location
  scenario 'user can place a ship on the board (F1)' do
    board1.place_ship(ship1, 2,"V")
    expect(board1.fleet).to include ship1
    expect(ship1.location[0]).to eq 2
    expect(board1.squares[2]).to eq "B"
  end

end