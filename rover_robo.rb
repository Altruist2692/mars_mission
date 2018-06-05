require_relative "./directions"

class RoverRobo
  attr_reader :dir, :position

  def initialize(initial_direction, current_pos=[0,0])
     @dir = initial_direction
     @position = current_pos
  end

  def turn_left
    @dir = @dir.turn_left
  end

  def turn_right
    @dir = @dir.turn_right
  end

  def move
    @position = @dir.move(@position)
  end

  def to_s
    "#{position[0]} #{position[1]} #{dir}"
  end
end
