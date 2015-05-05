require 'grid'

describe Grid do

  context 'begin a new game' do

    it 'creates a new grid' do
      expect(subject.class).to eq Array
    end
  end
end