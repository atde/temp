def fizzbuzz(min,max)
  j =[]
  (min..max).each do |y|
    if y % 3 == 0 && y % 5 == 0 
     j << "FizzBuzz"
     # when the value is a multiple of 3 and 5 it substituts the value for the word FizzBuzz in the array given
    elsif y % 5 == 0
     j << "Buzz"
     # when that condition does not apply y tries a new one that says that when the value is a multiple of only 5 it substituts the value for the word Buzz in side the array
    elsif y % 3 == 0   
     j << "Fizz"
     # when the condition above does not apply y tries a new one that says that when the value is a multiple of only 3 it substituts the value for the word Fizz in side the array
    else 
     j << y 
     # when none of the above conditions apply then it prints the same value given in the array
    end 

  end
 p j 
 #print the array (it will print the array with all the conditions that apply)
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]