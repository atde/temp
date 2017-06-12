def fizzbuzz(min, max)
  new_array = []
  for i in min..max
      new_array << "FizzBuzz" if i % 15 == 0
      new_array << "Fizz" elsif i % 3 == 0 
      new_array << "Buzz" elsif i % 5 == 0
    else 
      new_array << i 
    end
  end
  p new_array
end
p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"] 