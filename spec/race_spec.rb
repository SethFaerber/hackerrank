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


  it "returns NO when no is called" do
    expect(race.no).to eq("NO")
  end

  it "returns YES when yes is called" do
    expect(race.yes).to eq("YES")
  end

  context "after the first jump" do
    it "calculates k1's position" do
      race.jump_number = 1

      expect(race.calculate_k1_position).to eq(3)
    end

    it "calculates k2's position" do
      race.jump_number = 1

      expect(race.calculate_k2_position).to eq(6)
    end
  end

  context "when kangaroo 2 is faster than kangaroo 1" do
    it "returns NO" do
      race.k1_jump = 1
      race.k2_jump = 2

      expect(race.remove_fast_k2).to eq("NO")
    end
  end

  context "when kangaroo 2 is equally as fast as kangaroo 1" do
    it "returns NO" do
      race.k1_jump = 2
      race.k2_jump = 2

      expect(race.remove_fast_k2).to eq("NO")
    end
  end

  context "when kangaroo positions are compared" do
    it "returns NO if k1's position is ahead of k2" do
      # access the variables here and set them. Stub?

      expect(race.remove_fast_k2).to eq("NO")
    end
  end

end
