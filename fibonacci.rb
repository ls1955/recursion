#frozen_string_literal: false

def fibs(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  result = [0, 1]
  (2..num).each do |i|
    result[i] = result[i-2] + result[i-1]
  end

  result
end

# fibs's method test cases
# 10.times do |i|
#   p fibs(i)
# end

def fibs_rec(num)
  num <= 1 ? num : fibs_rec(num - 2) + fibs_rec(num -1)
end

# hasn't figure out a way to join
# fibonnaci sequence in an array
# in a single method
def fibs_rec_arr_joiner(num)
  result = []
  
  num.times do |i|
    result[i] = fibs_rec(i)
  end

  result
end

10.times do |i|
  p fibs_rec_arr_joiner(i)
end
