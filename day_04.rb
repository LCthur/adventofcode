test_cases = (178416..676461).to_a

def range_criteria?(numbers)
  array = numbers.to_s.chars
  array.each_with_index do |number, index|
    return false if index != 5 && number.to_i > array[index + 1].to_i
  end
  true
end

def two_digits_are_the_same?(numbers)
  array = numbers.to_s.chars
  array.each_with_index do |number, index|
    return true if index != 5 && number.to_i == array[index + 1].to_i
  end
  false
end

def counter(cases)
  count = 0
  cases.each do |number|
    count += 1 if (range_criteria?(number)) && (two_digits_are_the_same?(number))
  end
  count
end

p counter(test_cases)
