def elefantes
  puts "Ingresa el numero de elefantes con el que se rompe la telaraña"
  user_imput = gets.chomp.to_i
  #nombre de la variable que recoje el numero que el user imprime en la pantalla, este lo combierte con el to_i a un interger. 
  i = 1 
  # numero en el cual comienza a contar
  while i <= user_imput   
  #mientras la condicion no se cumpla va a continuar con el loop de abajo.
   if i == 1
    puts "#{i} elefante se columpiaba sobre la tela de una araña, como veía que resistía fue a llamar a otro elefante."
    #usamos if para poder hacer nuestra oracion singular cuando el elefante es 1 
   elsif i == user_imput
    puts "¡¡OHHH NO!! #{user_imput} elefantes rompieron la telaraña."
    #elsif para cuando la cantidad de elefantes es mas de uno y la rima tiene que estar en plural
   else 
    puts "#{i} elefantes se columpiaban sobre la tela de una araña, como veían que resistían fueron a llamar a otro elefante."
    # se imrimi esto cuando se cuample la condicion de while
   end
    i = i + 1
    #aqui le decimos al programa que incremente i por 1 cada vez. 
  end 
end

elefantes 

#usamos puts para que nos imprima cada cuenta de la rima en un renglon por elefante.
#si usaramos print nos pondría todas las cuentas de la rima una tras otra, sin espacio y sin cambiar a otro renglon. 

 
 