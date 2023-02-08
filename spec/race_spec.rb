require "race"

RSpec.describe Race do

  let(:race) { Race.new(0, 3, 4, 2) }

  it "properly assigns k1 starting location" do
    expect(race.k1_start).to eq(0)
  end

  it "properly assigns k2 starting location" do
    expect(race.k2_start).to eq(4)
  end

  it "properly assigns k1 jumping distance" do
    expect(race.k1_jump).to eq(3)
  end

  it "properly assigns k2 jumping distance" do
    expect(race.k2_jump).to eq(2)
  end
  #
  # describe "#call" do
  #
  #   context "when kangaroo 2 is faster than kangaroo 1" do
  #     it ""
  #   end
  #
  #   it "returns yes or no" do
  #     race = Race.new(0, 3, 4, 2)
  #
  #     expect(race.call).to eq("YES" || "NO")
  #   end
  # end
end
