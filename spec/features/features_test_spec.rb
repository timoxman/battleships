require 'capybara/rspec'
require 'game'

feature 'player can play a game of battleships' do
  scenario 'commence a game of battleships' do
    game = Game.new
    expect(game.start).to be true
  end

  scenario 'player is created' do
    game = Game.new
    expect(game.create_player).to be true
  end

end