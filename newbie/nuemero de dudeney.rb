def dudeney_number?(num)
  array = [num]
  array_s = num.to_s.each_char.each_slice(1).map{|x| x.join}
  array_i = array_s.map(&:to_i)
  num_base = array_i.inject(0){|sum,x| sum + x } 
  cubo = num_base ** 3
  if cubo == num
    true
  else
    false
  end
end

# Pruebas

 p dudeney_number?(1) #== true
 p dudeney_number?(125) #== false
 p dudeney_number?(512) #== true
 p dudeney_number?(1_728) #== false
 p dudeney_number?(5_832) #== true