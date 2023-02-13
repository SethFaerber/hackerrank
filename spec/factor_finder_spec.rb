require 'factor_finder'

RSpec.describe FactorFinder do

  # let(:object) { FactorFinder.new([3, 4], [24, 36, 48]) }
  let(:object) { FactorFinder.new( [2, 4], [16, 32, 96] ) }

  it "creates a 'factors' array from the first parameter" do
    expect(object.factors_array).to eq([2, 4])
  end

  it "creates a 'multiples' array from the second parameter" do
    expect(object.multiples_array).to eq([16, 32, 96])
  end

  it "finds the least common multiple of all elements in the factors array" do
    expect(object.find_lcm).to eq(4)
  end

  it "finds the greatest common divisor of all elements in the multiples array" do
    expect(object.find_gcd).to eq(16)
  end

  it "calculates how many intergers between the two arrays function as factors of the multiples array and as multiples of the factors array" do
    expect(object.number_of_candidates).to eq(4)
  end

  it "creates a list of candidates from number of candidates multiplied by the least common multiple of the factors array" do
    expect(object.create_candidates).to eq( [4, 8, 12, 16] )
  end

  it "leaves only candidates who are factors of the multiples array" do
    expect(object.eliminate_candidates).to eq( [4, 8, 16] )
    end

  it "returns the final number of candidates that match the solution" do
    expect(object.count_answers).to eq(3)
  end
end
