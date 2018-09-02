require_relative 'restricted_array.rb'
require 'pry'
# RestrictedArray can be created using a specified size, or a random size in
# the range of 1-20 will be chosen for you.
# All values are integers in the range of 1-221.
# RestrictedArray cannot be resized.

# Calculates the length of the restricted array. All values are integers.
# The restricted_array is terminated by 'nil' i.e. array[length] = nil
def length(array)
  length_array = 0
  while array[length_array] != nil
    length_array = length_array + 1
  end
  return length_array
  # raise NotImplementedError
end

# Prints each integer values in the array
def print_array(array)
  length_array = 0

  while array[length_array] != nil
    length_array = length_array + 1
  end
  length_array

  index = 0
  length_array.times do
    print  "#{array[index]} "
    index = index + 1
  end
  # raise NotImplementedError
end

# For an unsorted array, searches for 'value_to_find'.
# Returns true if found, false otherwise.
def search(array, length, value_to_find)

  index = 0

  length.times do
    if value_to_find == array[index]
      return  true
    end
    index = index + 1
  end
  return false
  # raise NotImplementedError
end

# Finds and returns the largest integer value the array
# Assumes that the array is not sorted.
def find_largest(array, length)
  # raise NotImplementedError
end

# Finds and returns the smallest integer value in the array
# Assumes that the array is not sorted.
def find_smallest(array, length)
  # raise NotImplementedError
end

# Reverses the values in the integer array in place
def reverse(array, length)

  index_last = length - 1
  index_first = 0

  last_num = array[index_last]
  first_num = array[index_first]

  if length % 2 == 0
    (length / 2).times do
      array[index_first] = last_num
      array[index_last] = first_num
      index_last = index_last - 1
      index_first = index_first + 1
      last_num = array[index_last]
      first_num = array[index_first]
    end
  elsif length % 2 != 0
    ((length - 1) / 2).times do
      array[index_first] = last_num
      array[index_last] = first_num
      index_last = index_last - 1
      index_first = index_first + 1
      last_num = array[index_last]
      first_num = array[index_first]
    end
  end
  return array
end

# For an array sorted in ascending order, searches for 'value_to_find'.
# Returns true if found, false otherwise.
def binary_search(array, length, value_to_find)

  index = 0
  mid = (length - 1)/ 2

  while index < (length - 1)

    if value == a[mid]
      return a[mid]
    end
    if value < a[mid]
      mid = mid - 1
    else value > a[mid]
      mid = mid + 1
    end
    i = i + 1
    return "value does not exit"
    # raise NotImplementedError
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
        temp_index += 1 # move to next index
      end
      if min_index != index # next minimum value is not at current index, swap
        temp = array[min_index]
        array[min_index] = array[index]
        array[index] = temp
      end
    end
  end
  ## --- END OF METHODS ---
