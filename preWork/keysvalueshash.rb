def recibe(hash)
 string_nuevo = ""
   hash.each do |key, values|
     string_nuevo << "La llave del Hash es '#{key}' y su valor es #{values}"
     #lo meti en un string nuevo por que asi me dan mis pruebas true.
   end
  string_nuevo
end

p recibe({chocolate: 10}) == "La llave del Hash es 'chocolate' y su valor es 10"
p recibe({azucar: 17}) == "La llave del Hash es 'azucar' y su valor es 17"
p recibe({"leche" => "12"})  == "La llave del Hash es 'leche' y su valor es 12"
