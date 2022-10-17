# frozen_string_literal: false

def merge_sort(arr)
  return arr if arr.length == 1

  mid = arr.length / 2
  left_half = merge_sort(arr[0...mid])
  right_half = merge_sort(arr[mid..])

  merge_two_sorted_arrays(left_half, right_half)
end

def merge_two_sorted_arrays(left_arr, right_arr)
  i = 0
  j = 0
  k = 0
  result = []

  while i < left_arr.length && j < right_arr.length do
    if left_arr[i] <= right_arr[j]
      result[k] = left_arr[i]
      i += 1
    else
      result[k] = right_arr[j]
      j += 1
    end
    k += 1
  end

  while i < left_arr.length
    result[k] = left_arr[i]
    i += 1
    k += 1
  end

  while j < right_arr.length
    result[k] = right_arr[j]
    j += 1
    k += 1
  end

  result
end

arr1 = [5, 3, 20, 1, 100]
arr2 = [-10, 5, 300, 10]

p merge_sort(arr1)
p merge_sort(arr2)
