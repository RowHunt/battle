require 'player'

describe Player do
  subject(:rowan) { Player.new('Rowan') }
  subject(:shiloh) { Player.new('Shiloh') }

  describe '#name' do
    it 'returns the name' do
      expect(rowan.name).to eq 'Rowan'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(rowan.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(shiloh).to receive(:receive_damage)
      rowan.attack(shiloh)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { rowan.receive_damage }.to change { rowan.hit_points }.by(-10)
    end
  end  
end