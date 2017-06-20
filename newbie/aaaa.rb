#pista te la da el nombre del metodo. 

def odd_indexed(arr)
 array_vacio =[]
 arr.each_with_index{|valor, posicion | array_vacio << valor if posicion % 2 == 0 } 
 array_vacio
end
p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]

def long_strings(arr)
  arr.select { |num|  num.length > 4 }   
end
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]

def start_with_h(arr)
  arr.detect { |letter| letter.include? ?h }
end
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"

def capitalize_array(arr)
  array_vacio = []
  arr.each_with_index {|valor, posicion | array_vacio << valor.capitalize } 
  array_vacio
end
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]

def group_by_starting_letter(arr)
arr.group_by { |i| i.chr }
end
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}

def number_of_r(arr)
  arr.count "r"
end

p number_of_r("ferrocarril") == 4
