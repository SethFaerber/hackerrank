require 'record_tracker'

RSpec.describe RecordTracker do
  let(:object) { RecordTracker.new([10, 5, 20, 20, 4, 5, 2, 25, 1]) }

  it "creates a 'scores' array from the parameter" do
    expect(object.game_scores).to eq([10, 5, 20, 20, 4, 5, 2, 25, 1])
  end

  it "assigns the first score to the 'high_score' counter" do
    object.set_initial_scores

    expect(object.current_high_score).to eq(object.game_scores[0])
  end

  it "assigns the first score to the 'low_score' counter" do
    object.call

    expect(object.current_low_score).to eq(object.game_scores[0])
  end

  it "increments the 'high_score_count' if the score is the highest so far" do
    object.call

    expect(object.high_score_count).to eq(2)
  end

  it "increments the 'low_score_count' if the score is the highest so far" do
    object.call

    expect(object.low_score_count).to eq(4)
  end
end