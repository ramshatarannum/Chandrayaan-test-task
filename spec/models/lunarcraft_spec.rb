require 'rails_helper'

RSpec.describe Lunarcraft, type: :model do
  it 'is valid with valid attributes' do
    lunarcraft = FactoryBot.build(:lunarcraft)
    expect(lunarcraft).to be_valid
  end

  it 'is not valid without x, y, z, or direction' do
    lunarcraft = FactoryBot.build(:lunarcraft, x: nil, y: nil, z: nil, direction: nil)
    expect(lunarcraft).not_to be_valid
  end

  describe '#turn_forward' do
    it 'moves the lunarcraft one step forward in the current direction' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'N')
      lunarcraft.turn_forward
      expect(lunarcraft.y).to eq(1)
    end
  end
  describe '#move_left' do
    it 'turns the lunarcraft 90 degrees to the left' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'N')
      lunarcraft.move_left
      expect(lunarcraft.direction).to eq('W')
    end
  end
  describe '#move_right' do
    it 'turns the lunarcraft 90 degrees to the right' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'N')
      lunarcraft.move_right
      expect(lunarcraft.direction).to eq('E')
    end
  end
end
