def join_hash(hash1, hash2, hash3)
  hash_vacio = Hash.new
  [hash1, hash2, hash3].each do |h|
   #meter todos los hash en un arreglo y llamarlos a cada uno
   h.each do |key, value|
   #cada arreglo llamar sus valores: key y value
   hash_vacio[key] = value
   #no se puede agregar un valor a un hash con << por que los hash se agregan de la forma anterior.
   end
 end
  p hash_vacio
end

fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}


#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"} 