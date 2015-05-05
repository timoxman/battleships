require 'grid'

describe Grid do

  context 'begin a new game' do

    it 'creates a new grid' do
      expect(subject.size).to eq 1
    end
  end
end