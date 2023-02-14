class FactorFinder

  attr_accessor :factors_array
  attr_accessor :multiples_array

  def initialize(factors_array, multiples_array)
    @factors_array = factors_array
    @multiples_array = multiples_array
    @candidates = []
    @answers = []
  end

  def count_answers
    select_candidates.count
  end

  def select_candidates
    create_candidates.select { |candidate| @multiples_array.all? { |multiple| multiple%candidate == 0 } }
  end

  def create_candidates
    number_of_candidates.times do |n|
      @candidates << (n + 1) * find_lcm # This method call in a loop means it will be repeatedly called. Instead of that, we memoize this method.
    end
    @candidates
  end

  def number_of_candidates
    find_gcd/find_lcm
  end

  def find_gcd
    @multiples_array.reduce(@multiples_array.last, :gcd)
  end

  # We memoize the find_lcm method so that it runs the first time it is called and stores the return, so the next time it is called, it does not run, it just returns its original return.
  def find_lcm
    @find_lcm ||= @factors_array.reduce(@factors_array.first, :lcm)
  end
end
