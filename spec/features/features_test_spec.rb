require 'capybara/rspec'
require 'game'

feature 'player can play a game of battleships' do
  scenario 'commence a game of battleships' do
    expect(game.start).to be true
  end
end