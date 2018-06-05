require_relative "spec_helper"

describe Directions::North do
  before(:each) do
    @north = Directions::North.new
  end

  describe "#turn_left" do
    it "returns WEST" do
      expect(@north.turn_left).to eq(Directions::WEST)
    end
  end

  describe "#turn_right" do
    it "returns EAST" do
      expect(@north.turn_right).to eq(Directions::EAST)
    end
  end

  describe "#move" do
    context "with current position at (0, 0)" do
      it "returns (0, 1)" do
        expect(@north.move([0, 0])).to eq([0, 1])
      end
    end
  end

  describe "#to_s" do
    it "returns N" do
      expect(@north.to_s).to eq("N")
    end
  end
end
