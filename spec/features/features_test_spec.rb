require 'capybara/rspec'
require 'game'

feature 'player can play a game of battleships' do

let(:game) { Game.new }

  scenario 'commence a game of battleships' do
    expect(game.start).to be true
  end

  scenario 'player is created' do
    expect(game.create_player).to be true
  end

  # scenario 'create a new empty grid' do
  #   game = Game.new
  #   expect(game.create_grid).to be true
  # end

  scenario 'creates a new grid as an empty array' do
    expect(game.create_grid).to eq Array
  end

end