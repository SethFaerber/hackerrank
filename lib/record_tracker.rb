class RecordTracker
  attr_reader :game_scores
  attr_reader :current_high_score
  attr_reader :current_low_score
  attr_reader :high_score_count
  attr_reader :low_score_count

  def initialize(scores)
    @game_scores = scores
    @current_high_score = 0
    @current_low_score = 0
    @high_score_count = 0
    @low_score_count = 0
  end

  def call
    set_initial_scores
    check_for_high_scores
    @current_high_score = @game_scores[0]
    check_for_low_scores
  end

  def set_initial_scores
    @current_high_score = @current_low_score = @game_scores[0]
  end

  def check_for_high_scores
    @game_scores.each { |game_score| count_high_score(game_score) if game_score > @current_high_score }

    @high_score_count
  end

  def count_high_score(game_score)
    @high_score_count += 1
    set_current_high_score(game_score)
  end

  def set_current_high_score(game_score)
    @current_high_score = game_score
  end

  def check_for_low_scores
    @game_scores.each { |game_score| count_low_score(game_score) if game_score < @current_low_score }

    @low_score_count
  end

  def count_low_score(game_score)
    @low_score_count += 1
    set_current_low_score(game_score)
  end

  def set_current_low_score(game_score)
    @current_low_score = game_score
  end
end