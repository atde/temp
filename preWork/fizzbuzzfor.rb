def fizzbuzz(min, max)
  new_array = []
  for i in min..max
  # assigning a name for each variable inside the range 
    if i % 15 == 0
      new_array << "FizzBuzz"
     
    # first condition 
    # fist condition applies ...
    # when the value is a multiple of 15 (wich is the same as beeing a multiple of 3 and 5)
    # if the value is a multiple of 15 then the word FizzBuzz will replace the original value and the word will be added in the new array
    elsif i % 3 == 0 
      new_array << "Fizz"  
    #second condition
    # if the first condition does not apply then it runs the second condition; which applies...
    # when the value is a multiple of 3 
    # if the value is a multiple of 3 then the word Fizz will replace the original value and the word will be added in the new array
    elsif i % 5 == 0
      new_array << "Buzz" 
    #third condition
    # if the first condition and second condition do not apply then it runs the third condition; which applies...
    # when the value is a multiple of 5 
    # if the value is a multiple of 5 then the word Buzz will replace the original value and the word will be added in the new array
    else 
      new_array << i 
    #fourth condition
    # when none of the above conditions apply... 
    # the same value will be added in the new array
    end
  end
  p new_array
  #print the new array (it will print the new array with all the conditions that apply)
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]