class Race
  attr_accessor :k1_start
  attr_accessor :k2_start
  attr_accessor :k1_jump
  attr_accessor :k2_jump
  attr_accessor :jump_number

  def initialize(k1_start, k1_jump, k2_start, k2_jump)
    @k1_start = k1_start
    @k2_start = k2_start
    @k1_jump = k1_jump
    @k2_jump = k2_jump
    @jump_number = 0
  end


  def call
    @return = ""

    remove_fast_k2
    race_the_roos

    puts @return
  end

  def remove_fast_k2
    no if @k2_jump >= @k1_jump
  end

  def race_the_roos
    10000.times do
      k1_position = calculate_k1_position
      k2_position = calculate_k2_position

      if k1_position > k2_position
        no
        break
      elsif k1_position < k2_position
        @jump_number += 1
      elsif k1_position == k2_position
        yes
        break
      end
    end
  end

  def calculate_k1_position
    (@jump_number * @k1_jump) + @k1_start
  end

  def calculate_k2_position
    (@jump_number * @k2_jump) + @k2_start
  end

  def yes
    @return = "YES"
  end

  def no
    @return = "NO"
  end
end

# Why is this running reverse

race_yes = Race.new(0, 3, 4, 2)
race_no = Race.new(0, 2, 5, 3)
race_test = Race.new(0, 3, 4, 2)
race_yes.call
# race_test.call

# Couple Approaches
# create an array of jumps for 1 kangaroo.
# Loop through that
#
# return "NO" if @k2_jump >= @k1_jump # Since k1 starts farther back than k2, it must have a greater jump distance to catch up.
# jump_number = 0

#########


























