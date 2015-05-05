require 'capybara/rspec'
require 'grid'
require 'ship'

feature 'player can play a game of battleships' do

  let(:grid) { Grid.new }
  let(:ship) { Ship.new }

  scenario 'user can place a ship on the board' do
    grid.place_ship(ship)
    expect(grid.grid_arr.include?(ship)).to eq true
  end
end