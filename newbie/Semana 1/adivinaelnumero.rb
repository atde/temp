class NumberGuessingGame
  def initialize
  #numero aleatorio
   @num_aleat = rand(0..9)
   # empieza con @ por que es una variable que se puede usar fuera y dentro del metodo.
  end
 
 def guess(num)
  # este metodo ponemos las condiciones del 'num' ... 'num' es un argumento que le damos al metodo diciendole que recive un numero. 
  if @num_aleat > num
    "Too low"
  elsif @num_aleat < num
    "Too high"
  elsif @num_aleat == num
    "You got it!"
  end
 end
end

game = NumberGuessingGame.new
# cada vez que ponen esto tienes que tener el metodo initialize!!
# esta es un objeto en donde estas llamando a la clase para que se ejecute. 

continuar_jugando = 'a'
#variable local

#ahora vamos a hacer un loop a fuera de la clase para que puedan continuar gunado las veces que el usuario quiera.
while continuar_jugando != 'y'
#mientra esta condicion se cumpla va a continuar con lo siguiente... la concidion se cumple cuando el valor de continuar_jugando es cual quier cosa meno la letra 'y'.. 
 string = '' 
 #variable local
 while string != "You got it!"
  p "Elige otro numero del 0 al 9"
  user_input = gets.chomp.to_i
  p string = game.guess(user_input)
 # aqui le decimos que mientras la condicion dada se cumpla va a imprimir el mensaje dado ... la condicion se rompe cuando el programa imprime 'You got it!' (dentro del metodo guess especificamos cuando obtener ese resultado.) y entonces este se sale de este loop al siguiente donde le pregunta al usuario si quiere seguir jugando... si la condicion del otro while se cumple comienza todo de nuevo... 
 end
  p "Desea salir del juego? y / n "
  game = NumberGuessingGame.new
  continuar_jugando = gets.chomp
  #mientras esta condicion se cumpla .. el juego vuelve a empezar .. lo que significa que se vuelve a aescojer un numero aleatoreo nuevo en la clase y se aplica el metodo guess al igual que los loops de while hasta que esta condicion se cumpla... y solo se cumple cuando el usuario imprime la letra 'y' entonce el programa termina el juego.
  end
end
 