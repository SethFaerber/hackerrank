class Race
  def initialize(k1_start, k2_start, k1_jump, k2_jump, jump_number)
    @k1_start = k1_start
    @k2_start = k2_start
    @k1_jump = k1_jump
    @k2_jump = k2_jump
    @jump_number = jump_number
  end

  def call
    remove_fast_k2
    race_the_roos
  end

  def remove_fast_k2
    no if @k2_jump >= @k1_jump
  end

  def race_the_roos
    @jump_number = 0
    10000.times do
      k1_position = calculate_k1_position(jump_number)
      k2_position = calculate_k2_position(jump_number)
      check_k1_passes_k2(k1_position, k2_position)
      compare_positions(k1_position, k2_position)
    end
  end

  def check_k1_passes_k2(k1_position, k2_position)
    no if k1_position > k2_position
  end

  def calculate_k1_position(jump_number)
    jump_number * @k1_jump + @k1_start
  end

  def calculate_k2_position(jump_number)
    jump_number * @k2_jump + @k2_start
  end

  def compare_positions(k1_position, k2_position)
    no if k1_position > k2_position
    @jump_number += 1 if k1_position < k2_position
    yes if k1_position == k2_position
  end

  def yes
    puts "YES"
  end

  def no
    puts "NO"
    break
  end
end

race_yes = Race.new(0, 3, 4, 2)
race_no = Race.new(0, 2, 5, 3)
race_yes.call
race_no.call

# Couple Approaches
# create an array of jumps for 1 kangaroo.
# Loop through that
#
# return "NO" if @k2_jump >= @k1_jump # Since k1 starts farther back than k2, it must have a greater jump distance to catch up.
# jump_number = 0

#########


























