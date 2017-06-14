 def recibe(hash)
    array =[]
  hash.each_key do |key|
    array << "La llave del Hash es '#{key}'"
  end

  hash.each_value do |value|
    array << " y su valor es #{value}"
  end
  array.join
end
p recibe({'frecuencia' => 4}) == "La llave del Hash es 'frecuencia' y su valor es 4"
p recibe({'velocidad' => '32km/h'}) == "La llave del Hash es 'velocidad' y su valor es 32km/h" 