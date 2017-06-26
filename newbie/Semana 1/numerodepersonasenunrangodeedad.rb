def total_between_age(array, min_age, max_age)
 contador = 0 
 array.each do |i|
  if i >= min_age && i <= max_age
   contador += 1
  end
 end 
 contador
end


# Pruebas
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4