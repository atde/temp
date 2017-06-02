def age(num)
  num > 10
  p "Woow... You are #{num} years old" if num
end

#test
p age(19) == "Woow... You are 19 years old"
p age(24) == "Woow... You are 24 years old"
p age(32) == "Woow... You are 32 years old"

def age(num)
  num > 10 
  p num ? "Woow... You are #{num} years old" : "Remember, you most be older than 10 to play"
end

#test
p age(19) == "Woow... You are 19 years old"
p age(24) == "Woow... You are 24 years old"
p age(32) == "Woow... You are 32 years old"