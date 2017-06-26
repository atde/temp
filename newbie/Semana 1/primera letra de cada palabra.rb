def first_letters(string)
  result = string.scan(/(\A\w|(?<=\s)\w)/)
  #busca la primera letra o la letra que sigue despues de un espacio. te da la respuesta [[H],[e],[m],[y],[h],[s]]
  result.flatten
  #nosotros queremos el resultado en un solo array todas las letras, para eso es flatten. 
end

# Pruebas
p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]