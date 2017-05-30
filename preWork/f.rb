def fizzbuzz(min, max)
  array = []
  nuevo_array = array << i 
  (min..max).each do |i|
   (1..1000).each do |y|
    if y = 5 or 10 or 20 or 25 
       puts "Buzz"
    if y = 3 or 6 or 9 or 12 or 18 or 21
       puts "Fizz"
    if y = 15 or 30 or 45 or 60 
       puts "FizzBuzz"

  end

end

p fizzbuzz(3, 5) #== ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) #== ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]