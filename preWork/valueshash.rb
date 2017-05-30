def recibe(hash)
arreglo =[]
 hash.each_value do |value|
  #es una variante del método each...especifica para pedir el valor de un hash
  arreglo << value
  #mete unicamente los valores del hash llamados value en el array
 end
 arreglo
end
p recibe({"name" => "maria", "age" => "23"}) == ["maria", "23"]