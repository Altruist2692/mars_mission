require_relative "spec_helper"

describe Directions::East do
  before :each do
    @east = Directions::East.new
  end

  describe "#turn_left" do
    it "returns NORTH" do
      expect(@east.turn_left).to eq(Directions::NORTH)
    end
  end

  describe "#turn_right" do
    it "returns SOUTH" do
      expect(@east.turn_right).to eq(Directions::SOUTH)
    end
  end

  describe "#to_s" do
    it "returns E"do
      expect(@east.to_s).to eq("E")
    end
  end

  describe "#move" do
    context "with current position at (0, 0)" do
      it "returns (1, 0)" do
        expect(@east.move([0, 0])).to eq([1, 0])
      end
    end
  end
end
