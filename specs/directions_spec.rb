require_relative "spec_helper"

describe Directions do
  describe "#from_s" do
    it "returns NORTH when given N" do
      expect(Directions::from_s("N")).to eq(Directions::NORTH)
    end

    it "returns SOUTH when given S" do
      expect(Directions::from_s("S")).to eq(Directions::SOUTH)
    end

    it "returns EAST when given E" do
      expect(Directions::from_s("E")).to eq(Directions::EAST)
    end

    it "returns WEST when given W" do
      expect(Directions::from_s("W")).to eq(Directions::WEST)
    end

    it "returns nil when given any other value" do
      expect(Directions::from_s("")).to be_nil
    end
  end
end
