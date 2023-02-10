require 'factor_finder'

RSpec.describe FactorFinder do
  let(:object) { FactorFinder.new([2, 4], [16, 32, 96]) }

  it "creates a 'factors' array from the first parameter" do
    expect(object.factors_array).to eq([2, 4])
  end

  it "captures the last element of the factors array" do
    expect(object.candidates_first_element).to eq(4)
  end

  it "captures the first element of the multiples array" do
    expect(object.candidates_last_element).to eq(16)
  end

  it "finds how many times the first element goes into the last element" do
    expect(object.number_of_times).to eq(4)
  end

  it "fills the cadidates array with all multiples of the first element up to the last element" do
    expect(object.add_candidates).to eq([4, 8, 12, 16])
  end

  # it "creates a 'multiples' array from the second parameter" do
  #   object.create_candidates
  #
  #   expect(object.multiples_array).to eq([16, 32, 96])
  # end


  # it "creates a 'candidates' array of all the multiples of the last value of the factors array to the first value of the multiples array" do
  #   expect(object.candidates).to eq([4, 8, 12, 16])
  # end
end