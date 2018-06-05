require_relative "spec_helper"

describe Directions::West do
  before(:each) do
    @west = Directions::West.new
  end

  describe "#turn_left" do
    it "returns SOUTH" do
      expect(@west.turn_left).to eq(Directions::SOUTH)
    end
  end

  describe "#turn_right" do
    it "returns NORTH" do
      expect(@west.turn_right).to eq(Directions::NORTH)
    end
  end

  describe "#move" do
    context "given current position (0, 0)" do
      it "returns (-1, 0)" do
        expect(@west.move([0, 0])).to eq([-1, 0])
      end
    end
  end

  describe "#to_s" do
    it "returns W" do
      expect(@west.to_s).to eq("W")
    end
  end
end
