def fizzbuzz(min,max)
  j =[]
  (min..max).each do |y|
  #nombrando a cadad valor en un rango
    case 
    #the case does not need a name because it's inside an each (if you were to asigne a name to the case then this would not be taken by the program; it would only stop at the each and give you the same values in the range given in the fist place)
    when y % 3 == 0 && y % 5 == 0 
     j << "FizzBuzz"
     # when the value is a multiple of 3 and 5 it substituts the value for the word FizzBuzz in the array given
    when y % 5 == 0
     j << "Buzz"
     # when the value is a multiple of only 3 it substituts the value for the word Fizz in side the array
    when y % 3 == 0   
     j << "Fizz"
     # when none of the above apply then it prints the same value given in the array
    else 
     j << y 
    end 

  end
 p j
 #print the array (it will print the array with all the conditions that apply)
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]