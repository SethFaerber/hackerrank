class Property
  def initialize(house_start, house_end, apple_tree, orange_tree, apples_array, oranges_array)
    @house_start = house_start
    @house_end = house_end
    @apple_tree = apple_tree
    @orange_tree = orange_tree
    @apples_array = apples_array
    @oranges_array = oranges_array
  end

  def run_program(s, t, a, b, apples, oranges)
    @house_start = s
    @house_end = t
    @apple_tree = a
    @orange_tree = b
    @apples_array = apples
    @oranges_array = oranges
    @apple_count = 0
    @orange_count = 0

    return_answer
  end

  def apple_location(apple)
    apple + @apple_tree
  end

  def orange_location(orange)
    orange + @orange_tree
  end

  def check_apples
    @apples_array.each do |apple|
      if apple_location(apple).between?(@house_start, @house_end)
        @apple_count += 1
      end
    end
  end

  def check_oranges
    @oranges_array.each do |orange|
      if orange_location(orange).between?(@house_start, @house_end)
        @orange_count += 1
      end
    end
  end

  def return_answer
    check_apples
    check_oranges
    puts "#{@apple_count}\n#{@orange_count}"
  end
end


# This is where code is called in HackerRank

def countApplesAndOranges(s, t, a, b, apples, oranges)
  # Write your code here
  Property.new(s, t, a, b, apples, oranges).run_program(s, t, a, b, apples, oranges)
end

s = 7
t = 11
a = 5
b = 15
m = 3
n = 2
apples = [-2, 2, 1]
oranges = [5, -6]

countApplesAndOranges(s, t, a, b, apples, oranges)