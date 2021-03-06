require_relative "./rover_robo"
require_relative "./manager"

plateau = ARGF.gets

while !ARGF.eof
  rover_position = ARGF.gets

  position = rover_position.split[0, 2]
  direction = Directions.from_s(rover_position.split[2])

  rover = RoverRobo.new(direction, position)
  Manager.new(rover).receive ARGF.gets

  puts rover
end
