def canonical(word)
word.split(//).sort.join("")
 # split - separa la palabra por letra, sort - reacomoda las letras en orden alfabetico, join - une las letras y las mete en un string
#paso 3: mete la base primero y la ordena de forma alfabetica, y junta las letras en una sola palabra en orden alfabetico.
        #tras hacer esto agarra la palabra y hace con ella lo mismo que hizo con a base.
end


def are_anagrams?(base, word2)
  canonical(base) == canonical(word2)
  #paso 2: recibe la base y la palabra obtenidas en el metodo de abajo y la manda al metodo de arriba.
  #paso 4: llamas el metodo de arriba que tiene ambos elementos; la base y la palabra ordenadas alfabeticamente, y compara 
          #la palabra base con la palabra y si estas son iguales entonces las regresa al metodo de abajo
end
def anagrams_for(base, array)
array_vacio = []

array.each do |i|
# paso 1: cada elemento del areglo se llama i 
 if are_anagrams?(base, i)
 #paso 5: llamamos el metodo de arriba; si este es TRUE entonces la palabra pasa al paso 6...
  array_vacio << i
 #paso 6: mete la palabra en el orden original dentro de un areglo vacio, junto con las otras palabras que dieron TRUE en el paso 5 
 end
end  
  array_vacio
  #paso 7: llamas el arreglo_vacio el cual contiene dentro la base y todas las palabras que dieron TRUE en el paso 5.
end

p anagrams_for("omar", ["ramo", "maro", "roma", "cesar", "ivan"])