# 1. Write a recursive method #fibs which akes a number and returns an array containing that many numbers from the fibonacci sequence. Using an example input of `8`, this method should return the array `[0, 1, 1, 2, 3, 5, 8, 13]`.

def fibs(n, a = 0, b = 1, result = [0])
  return result if n == 1
  result << b
  fibs(n - 1, b, a + b, result)
end

# 2. Make a method that uses Merge Sort and recursion to sort a given array.

def merge_sort(array)
  return array if array.length < 2

  mid = array.length / 2
  left_half = array.slice(0, mid)
  right_half = array.slice(mid, array.length - mid)

  left = merge_sort(left_half)
  right = merge_sort(right_half)
  
  merged = []

  while left.length > 0 && right.length > 0 do
    if left[0] <= right[0]
      merged << left.shift
    elsif left[0] > right[0]
      merged << right.shift
    end    
  end

  return merged + left + right
end
