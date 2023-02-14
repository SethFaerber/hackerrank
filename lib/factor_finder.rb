class FactorFinder

  attr_accessor :factors_array
  attr_accessor :multiples_array

  def initialize(factors_array, multiples_array)
    @factors_array = factors_array
    @multiples_array = multiples_array
    @candidates = []
    @answers = []
  end

  def find_lcm
    @factors_array.reduce(@factors_array.first, :lcm)
  end

  def find_gcd
    @multiples_array.reduce(@multiples_array.last, :gcd)
  end

  def number_of_candidates
    find_gcd/find_lcm
  end

  def create_candidates
    number_of_candidates.times do |n|
      @candidates << (n + 1) * find_lcm
    end
    @candidates
  end

  def select_candidates
    create_candidates.select { |candidate| @multiples_array.all? { |multiple| multiple%candidate == 0 } }
  end

  def count_answers
    select_candidates.count
  end
end