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

    describe '#turn_backward' do
    it 'moves the lunarcraft one step backward in the current direction' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'N')
      lunarcraft.turn_backward
      expect(lunarcraft.y).to eq(-1)
    end

    it 'does not allow the lunarcraft to move beyond galactic boundaries' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'W')
      lunarcraft.turn_backward
      expect(lunarcraft.x).to eq(1) # Should not move beyond the boundary
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
    describe '#move_up' do
    it 'turns the lunarcraft upwards' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'N')
      lunarcraft.move_up
      expect(lunarcraft.direction).to eq('Up')
    end
  end

  describe '#move_down' do
    it 'turns the lunarcraft downwards' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'Up')
      lunarcraft.move_down
      expect(lunarcraft.direction).to eq('Down')
    end
  end
  describe '#execute_commands' do
    it 'executes a series of commands accurately and efficiently' do
      lunarcraft = Lunarcraft.new(x: 0, y: 0, z: 0, direction: 'N')
      lunarcraft.execute_commands(['f', 'r', 'u', 'b', 'l'])
      expect(lunarcraft.position).to eq([0, 1, 0])
      expect(lunarcraft.direction).to eq('W')
    end
  end
end
