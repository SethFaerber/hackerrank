class RecordTracker
  attr_reader :scores
  attr_reader :high_score
  attr_reader :low_score
  attr_reader :high_score_tracker

  def initialize(scores)
    @scores = scores
    @high_score = 0
    @low_score = 0
    @high_score_tracker = 0
  end

  def call
    set_scores
    increment_high_score
  end

  def set_scores
    @high_score = @low_score = @scores[0]
  end

  def increment_high_score

    @scores.each { |score| count_high_score(score) if score > @high_score }

    @high_score_tracker
  end

  def count_high_score(score)
    @high_score_tracker += 1
    set_current_high_score(score)
  end

  def set_current_high_score(score)
    @high_score = score
  end

end