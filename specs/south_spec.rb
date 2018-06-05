require_relative "spec_helper"

describe Directions::South do
  before :each do
    @south = Directions::South.new
  end

  describe "#turn_left" do
    it "returns EAST" do
      expect(@south.turn_left).to be(Directions::EAST)
    end
  end

  describe "#turn_right" do
    it "returns WEST" do
      expect(@south.turn_right).to eq(Directions::WEST)
    end
  end

  describe "#move" do
    context "given position (0, 0)" do
      it "returns (0, -1)" do
        expect(@south.move([0, 0])).to eq([0, -1])
      end
    end
  end

  describe "#to_s" do
    it "returns S" do
      expect(@south.to_s).to eq("S")
    end
  end
end
