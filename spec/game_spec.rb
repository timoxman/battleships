require 'game'

describe Game do

  context 'playing a game' do

    it 'starts a new game' do
      expect(game.start).to be true
    end
  end
end