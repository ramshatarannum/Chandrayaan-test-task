class Lunarcraft < ApplicationRecord

  validates_presence_of :x, :y, :z, :direction

  def turn_forward
    self.y += 1 if direction == 'N'
    self.y -= 1 if direction == 'S'
    self.x += 1 if direction == 'E'
    self.x -= 1 if direction == 'W'
  end
end
