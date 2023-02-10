require 'factor_finder'

RSpec.describe FactorFinder do
  let(:factors) { FactorFinder.new([2, 4], [16, 32, 96]) }

  it "creates a 'factors' array from the first parameter" do
    expect(factors.factors_array).to eq([2, 4])
  end

  it "creates a 'multiples' array from the second parameter" do
    expect(factors.multiples_array).to eq([16, 32, 96])
  end
end