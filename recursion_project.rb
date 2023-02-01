# 1. Write a recursive method #fibs which akes a number and returns an array containing that many numbers from the fibonacci sequence. Using an example input of `8`, this method should return the array `[0, 1, 1, 2, 3, 5, 8, 13]`.

def fibs(n, a = 0, b = 1, result = [0])
  return result if n == 1
  return [] if !n.is_a?(Integer) || n <= 0
  result << b
  fibs(n - 1, b, a + b, result)
end