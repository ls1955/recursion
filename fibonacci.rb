# frozen_string_literal: false

def fibs(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  result = [0, 1]
  (2..num).each do |i|
    result[i] = result[i - 2] + result[i - 1]
  end

  result
end

def fibs_rec(num)
  num <= 1 ? num : fibs_rec(num - 2) + fibs_rec(num - 1)
end

# not able to figure out a way to join
# fibonnaci sequence in an array
# with a single method
def fibs_rec_arr_joiner(num)
  result = []

  (0..num).each do |i|
    result[i] = fibs_rec(i)
  end

  result
end

10.times do |i|
  p fibs(i)
  p fibs_rec_arr_joiner(i)
end
