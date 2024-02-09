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
  def turn_backward
    case direction
    when 'N' then move_along_axis(:y, -1)
    when 'S' then move_along_axis(:y, 1, max_bound: 9_999_999)
    when 'E' then move_along_axis(:x, -1)
    when 'W' then move_along_axis(:x, 1, max_bound: 9_999_999)
    end
  end
  private

  def move_along_axis(axis, step, max_bound: nil)
    self.send("#{axis}=", self.send(axis) + step) unless max_bound_reached?(axis, step, max_bound)
  end
    def max_bound_reached?(axis, step, max_bound)
    max_bound && (self.send(axis) + step).send(axis == :y ? :zero? : :>=, max_bound)
  end
end
