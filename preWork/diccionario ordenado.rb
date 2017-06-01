def diccionario
  puts "Escribe una palabra:"
  user_imput = " "
  entradas = 0 
  enter = "enter".to_s
  while not user_imput.empty?
    entradas = entradas + 1

    puts "Escribe otra palabra (o presiona #{enter} para finalizar):" 

  else
    puts "Felicidades!Tu diccionario tiene #{entradas} palabras"
    end  
end