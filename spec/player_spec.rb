require 'player.rb'

describe 'Player' do
  subject(:bob) { Player.new('Bob') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#hit_points' do
    it 'returns the h'
  end
end
