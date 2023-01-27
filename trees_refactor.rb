class Property
  def initialize(house_start, house_end, apple_tree, orange_tree, apples_array, oranges_array)
    @house_start = house_start
    @house_end = house_end
    @apple_tree = apple_tree
    @orange_tree = orange_tree
    @apples_array = apples_array
    @oranges_array = oranges_array
  end


  # make a new method with a generic name and parameters for what you'll pass in.
  # Pass the proper data at the caller
  def call
    @apple_count = get_fruits_between(@apples_array, @apple_tree).size
    @orange_count = get_fruits_between(@oranges_array, @orange_tree).size
    puts "#{@apple_count}\n#{@orange_count}"
  end
  # Inline Method used

  def get_fruits_between(fruits, tree)
    fruits.select { |fruit| fruit_location(fruit, tree).between?(@house_start, @house_end) }
  end

  def fruit_location(fruit, tree)
    fruit + tree
  end

end

# This is where code is called in HackerRank

def countApplesAndOranges(s, t, a, b, apples, oranges)
  # Write your code here
  Property.new(s, t, a, b, apples, oranges).call
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