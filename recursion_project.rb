# 1. Write a recursive method #fibs which akes a number and returns an array containing that many numbers from the fibonacci sequence. Using an example input of `8`, this method should return the array `[0, 1, 1, 2, 3, 5, 8, 13]`.

def fibs(n, a = 0, b = 1, result = [0])
  return result if n == 1
  result << b
  fibs(n - 1, b, a + b, result)
end

# 2. Write a recursive method that uses 'merge sort' to sort a given array.

def merge_sort(arr, merged = [], mid = arr.count / 2)
  return arr if arr.count < 2
  l = merge_sort(arr.slice!(0, mid))
  r = merge_sort(arr)
  while l.count > 0 && r.count > 0 do
    l[0] < r[0] ? merged << l.shift : merged << r.shift
  end
  merged + l + r
end

n = rand(1..20)

puts "The Fibonacci sequence of randomly-generated length #{n} is: \n#{fibs(n)}"

arr = []
rand(2..20).times do
  arr << rand(200)
end

puts "Randomly-generated & merge-sorted array: \n#{merge_sort(arr)}"