def diccionario
  puts "Escribe una palabra:"
  entradas = 0 
  user_input = gets.chomp.to_s
  array_nuevo = []
  while user_input == user_input.empty?
    if user_input == " "
      entradas = entradas + 1
      array_nuevo << user_input
      puts "Escribe otra palabra (o presiona enter para finalizar):" 
    else
      puts "Felicidades!Tu diccionario tiene #{entradas} palabras"
    end
  end
    #array_nuevo.sort 
end

p diccionario