require_relative 'restricted_array.rb'
# RestrictedArray can be created using a specified size, or a random size in
# the range of 1-20 will be chosen for you.
# All values are integers in the range of 1-221.
# RestrictedArray cannot be resized.

## Calculates the length of the restricted integer array_size
# Time complexity = O(n) since all elements in the array will be visited once
# Space complexity = O(1) since the additional storage needed does not depend
#                    on input array size.
def length(array)
  i = 0
  while array[i] != nil
    i += 1
  end
  return i
end

# Prints each integer values in the array
# Time complexity = O(n) since all elements in the array will be visited once
# Space complexity = O(1) since the additional storage needed does not depend
#                    on input array size.
def print_array(array)
  i = 0
  while array[i] != nil
    print "#{array[i]} "
    i += 1
  end
  puts
end

# For an unsorted array, searches for 'value_to_find'.
# Returns true if found, false otherwise.
# Time complexity = O(n) since all elements in the array will be visited once
# Space complexity = O(1) since the additional storage needed does not depend
#                    on input array size.
def search(array, length, value_to_find)
  length.times do |index|
    if array[index] == value_to_find
      return true # found
    end
  end

  return false # not found
end

# Finds and returns the largest integer value the array
# Assumes that the array is not sorted.
# Time complexity: O(n) where n is the length of the array
# Space complexity: O(1), auxiliary storage i, takes constant space independent of input length
def find_largest(array, length)
  return nil if length <= 0

  largest = array[0] # set largest to be the first value in the array
  i = 1
  while i < length
    if array[i] > largest
      largest = array[i] # new largest found
    end
    i += 1
  end
  return largest
end

# Finds and returns the smallest integer value in the array
# Assumes that the array is not sorted.
# Time complexity: O(n) where n is the length of the array
# Space complexity: O(1), auxiliary storage i, takes constant space independent of input length
def find_smallest(array, length)
  return nil if length <= 0

  smallest = array[0] # set smallest to be the first value in the array
  i = 1
  while i < length
    if array[i] < smallest
      smallest = array[i] # new smallest found
    end
    i += 1
  end
  return smallest
end

# Reverses the values in the integer array
# Time complexity = O(n) since all elements in the array will be updated at most once.
# The loop runs n/2 times.
# Space complexity = O(1) since the additional storage needed does not depend
#                    on input array size.
def reverse(array, length)
  return if length < 2 # if length is 0 or 1, nothing to reverse
  front_index = 0
  back_index = length-1
  while front_index < back_index
    # swap using temp variable
    temp = array[front_index]
    array[front_index] = array[back_index]
    array[back_index] = temp
    # increment front index, decrement back index
    front_index += 1
    back_index -= 1
  end
end

# For an array sorted in ascending order, searches for 'value_to_find'.
# Returns true if found, false otherwise.
# Time complexity: O(log n) where n is the length of the array.
# After each iteration through the loop half of the remaining elements get eliminated.
# So for n elements, there will be at the most log n iterations through the loop
#
def binary_search(array, length, value_to_find)
  return false if length == 0
  low = 0
  high = length - 1
  while low < high
    mid = (high + low)/2
    if array[mid] == value_to_find
      return true # value found
    elsif array[mid] > value_to_find
      high = mid - 1 # value is in the upper half
    elsif array[mid] < value_to_find
      low = mid + 1 # value is in the lower half
    end
  end

  return true if array[low] == value_to_find # only one element in the array case
  return false # not found
end

# Helper method provided to sort the array in ascending order
# Implements selection sort
# Time complexity = O(n^2) since to find the correct value to be in a given location,
# all the remaining elements are visited. This is done for each location.
# (nested loop of size n each)
# Space complexity = O(1) since the additional storage needed does not depend
#                    on input array size.
def sort(array, length)
  length.times do |index| # outer loop - n elements
    min_index = index # assume index is where the next minimally value is
    temp_index = index+1 # compare with values at index+1 to length-1
    while temp_index < length # inner loop - n-1 elements
      if array[temp_index] < array[min_index] # found a new minimum, update min_index
        min_index = temp_index
      end
      temp_index += 1
    end
    if min_index != index # next minimum value is not at current index, swap
      temp = array[min_index]
      array[min_index] = array[index]
      array[index] = temp
    end
  end
end
## --- END OF METHODS ---
