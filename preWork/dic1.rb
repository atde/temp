def diccionario
  puts "Escribe una palabra:"
  entradas = 0
  user_input = gets.chomp
  array_nuevo = [user_input] 
    while user_input != ""
      entradas = entradas + 1  
      p "Escribe otra palabra (o presiona enter para finalizar):" 
      user_input = gets.chomp
      array_nuevo << user_input

    end
   puts "Felicidades!Tu diccionario tiene #{entradas} palabras"
   array_completo = array_nuevo.sort
   array_completo.each do |i|
   a = i.split(" ").map { |s| s.split("") }
   a.map { |i| i.join  }.join(" ")
  end
end
p diccionario

