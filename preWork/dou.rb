def diccionario
  puts "Escribe una palabra:"
  user_input = " "
  array_nuevo = []
  entradas = 0 
  user_imput = gets.chomp
  array_nuevo << user_imput
  entradas = entradas + 1
  puts "Escribe otra palabra (o presiona enter para finalizar):" 

  end
    puts "Felicidades!Tu diccionario tiene #{entradas} palabras"
    print array_nuevo.sort.join 
end while not user_imput.empty?

p diccionario