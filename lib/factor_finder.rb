class FactorFinder

  attr_accessor :factors_array
  attr_accessor :multiples_array
  attr_accessor :candidates

  def initialize(factors_array, multiples_array)
    @factors_array = factors_array
    @multiples_array = multiples_array
    @candidates = []

  end

  def candidates_first_element
    @factors_array.pop
  end

  def candidates_last_element
    @multiples_array.shift
  end

  def number_of_times
    candidates_last_element/candidates_first_element
  end

  def add_candidates
    number_of_times.times do |n|
      @candidates << (candidates_first_element * (n + 1))
    end
  end
end