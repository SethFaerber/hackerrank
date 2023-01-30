class Race
  def initialize(k1_start, k2_start, k1_jump, k2_jump)
    @k1_start = k1_start
    @k2_start = k2_start
    @k1_jump = k1_jump
    @k2_jump = k2_jump
  end

  def call

  end




end










10000.times do
  advance_kangaroos_one_jump
  compare_their_positions

end

def advance_kangaroos_one_jump

end

def compare_their_positions
  return "Yes" if k1_position == k2_position
  "No"
end

# Couple Approaches
# create an array of jumps for 1 kangaroo.
# Loop through that

return "NO" if @k2_jump >= @k1_jump # Since k1 starts farther back than k2, it must have a greater jump distance to catch up.
jump_number = 0

