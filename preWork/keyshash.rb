def recibe(hash)
array_vacio = []
  hash.each_key do |key|
  #es una variante del método each...especifica para pedir la key de un hash
   array_vacio << key
   #mete unicamente los valores del hash llamados value en el array
  end
 array_vacio
end

p recibe({country: "USA", state: "California", "street" => "Palms"}) == [:country, :state, "street"]
