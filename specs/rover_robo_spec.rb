require_relative "spec_helper"

describe RoverRobo do
  context "standing at position (0, 0)" do
    context "facing NORTH" do
      let(:rover_robo) {RoverRobo.new (Directions::NORTH)}

      describe "#turn_left" do
        it "faces WEST" do
          rover_robo.turn_left
          expect(rover_robo.dir).to eq(Directions::WEST)
        end
      end

      describe "#turn_right" do
        it "faces EAST" do
          rover_robo.turn_right
          expect(rover_robo.dir).to eq(Directions::EAST)
        end
      end

      describe "#move" do
        it "stands at position (0, 1)" do
          rover_robo.move
          expect(rover_robo.position).to eq([0, 1])
        end
      end
    end

    context "facing WEST" do
      let (:rover) {RoverRobo.new(Directions::WEST)}

      describe "#turn_left" do
        it "faces SOUTH" do
          rover.turn_left
          expect(rover.dir).to eq(Directions::SOUTH)
        end
      end

      describe "#turn_right" do
        it "faces NORTH" do
          rover.turn_right
          expect(rover.dir).to eq(Directions::NORTH)
        end
      end

      describe "#move" do
        it "stands at position (-1, 0)" do
          rover.move
          expect(rover.position).to eq([-1, 0])
        end
      end
    end

    context "facing SOUTH" do
      let(:rover) {RoverRobo.new(Directions::SOUTH)}

      describe "#turn_left" do
        it "faces EAST" do
          rover.turn_left
          expect(rover.dir).to eq(Directions::EAST)
        end
      end

      describe "#turn_right" do
        it "faces WEST" do
          rover.turn_right
          expect(rover.dir).to eq(Directions::WEST)
        end
      end

      describe "#move" do
        it "stands at position (0, -1)" do
          rover.move
          expect(rover.position).to eq([0, -1])
        end
      end
    end

    context "facing EAST" do
      let(:rover_robo) {RoverRobo.new(Directions::EAST)}

      describe "#turn_left" do
        it "faces NORTH" do
          rover_robo.turn_left
          expect(rover_robo.dir).to eq(Directions::NORTH)
        end
      end

      describe "#turn_right" do
        it "faces SOUTH" do
          rover_robo.turn_right
          expect(rover_robo.dir).to eq(Directions::SOUTH)
        end
      end

      describe "#move" do
        it "stands at position (1, 0)" do
          rover_robo.move
          expect(rover_robo.position).to eq([1, 0])
        end
      end
    end
  end
end
