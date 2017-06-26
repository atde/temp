=begin
Código Bacon

El código Bacon es un método para ocultar mensajes ideado por Francis Bacon en 1605.
Cada letra del mensaje se reemplaza por un grupo de cinco letras 'A' o 'B', como se muestra en el siguiente hash.

diccionario={"a"=>"AAAAA","b"=>"AAAAB","c"=>"AAABA","d"=>"AAABB","e"=>"AABAA",
            "f"=>"AABAB","g"=>"AABBA","h"=>"AABBB","i"=>"ABAAA","k"=>"ABAAB",
            "l"=>"ABABA","m"=>"ABABB","n"=>"ABBAA","o"=>"ABBAB","p"=>"ABBBA",
            "q"=>"ABBBB","r"=>"BAAAA","s"=>"BAAAB","t"=>"BAABA","v"=>"BAABB",
            "w"=>"BABAA","x"=>"BABAB","y"=>"BABBA","z"=>"BABBB"}

Actividad
Crea el método baconian_cipher que recibe un mensaje oculto con el código Bacon y regresa el mensaje original.
https://es.wikipedia.org/wiki/C%C3%B3digo_Bacon
=end

def baconian_cipher(messege)
#definimos nuestro metodo, con su parametro.
  array = []
  #variable local de un array vacio 
  diccionario={"a"=>"AAAAA","b"=>"AAAAB","c"=>"AAABA","d"=>"AAABB","e"=>"AABAA",
            "f"=>"AABAB","g"=>"AABBA","h"=>"AABBB","i"=>"ABAAA","k"=>"ABAAB",
            "l"=>"ABABA","m"=>"ABABB","n"=>"ABBAA","o"=>"ABBAB","p"=>"ABBBA",
            "q"=>"ABBBB","r"=>"BAAAA","s"=>"BAAAB","t"=>"BAABA","v"=>"BAABB",
            "w"=>"BABAA","x"=>"BABAB","y"=>"BABBA","z"=>"BABBB"}
  #variable local de un hash (formula para leer el codigo)
  messege_div_lettr = messege.scan(/...../)
  #varialbe local que guarda el messege - con el .scan(/...../) eparamos el messege cada 5 letras un string, y mete todo dentro de un array.
  #.scan(pattern) → array click to toggle source: iterate through str, matching the pattern (which may be a Regexp or a String). 
  #For each match, a result is generated and either added to the result array or passed to the block. 
  #If the pattern contains no groups, each individual result consists of the matched string, $&. 
  #If the pattern contains groups, each individual result is itself an array containing one entry per group.
  
  messege_div_lettr.each do |i|
  #especificamos que cada elemento en la variable messege_div_lettr puede ser llamado por i 
    diccionario.each do |key, value|
    #especificamos que cadda elemento en la variable diccionario puede es llamado key (su llave) y value (su valor)
      i == value ? array << key : "ERROR"
      #metodo de condicional, que cuando se cumpla la condicion
      #la accion sera que meta la key en la variable local array.
    end
  end  
  array.join
  #mandamos llamar la variable local array que guarda los elemento pedidos
  #utillizamos .join para juntar estos y sacarlos del array
  #de tal forma que te regresa un array de una sola palabra.
end

# Pruebas

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"

