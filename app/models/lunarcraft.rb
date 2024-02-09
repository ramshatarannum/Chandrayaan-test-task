class Lunarcraft < ApplicationRecord

  validates_presence_of :x, :y, :z, :direction

  def turn_forward
    self.y += 1 if direction == 'N'
    self.y -= 1 if direction == 'S'
    self.x += 1 if direction == 'E'
    self.x -= 1 if direction == 'W'
  end

    def move_left
    directions = %w[N E S W]
    current_index = directions.index(direction) || 0 # Default to 0 if direction is not found
    self.direction = directions.rotate(-1).fetch(current_index, 'N')
  end
  def move_right
    directions = %w[N E S W]
    current_index = directions.index(direction)
    self.direction = directions.rotate(1)[current_index]
  end
    def move_up
    self.direction = 'Up'
  end
    def move_down
    self.direction = 'Down'
  end
end
