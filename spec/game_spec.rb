require 'game'

describe Game do

  context 'playing a game' do

    it 'starts a new game' do
      expect(subject.start).to be true
    end

    it 'creates a player' do
      expect(subject.create_player).to be true
    end

  end
end