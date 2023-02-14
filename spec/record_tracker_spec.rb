require 'record_tracker'

RSpec.describe RecordTracker do
  let(:object) { RecordTracker.new([10, 5, 20, 20, 4, 5, 2, 25, 1]) }

  it "creates a 'scores' array from the parameter" do
    expect(object.scores).to eq([10, 5, 20, 20, 4, 5, 2, 25, 1])
  end

  it "assigns the first score to the 'high_score' counter" do
    object.set_scores

    expect(object.high_score).to eq(object.scores[0])
  end

  it "assigns the first score to the 'low_score' counter" do
    object.call

    expect(object.low_score).to eq(object.scores[0])
  end

  it "increments the 'high_score' if the score is the highest so far" do
    object.call

    expect(object.high_score_tracker).to eq(2)
  end

end