=begin
#Regresa true si encuentra un numero de cuenta.
def verifica (string)
  if (string =~ /(\d{4})-(\d{3})-(\d{3})/)
    #para verificar si estabien mi expresion regular ir a https://regex101.com/r/vNJvDe/2/
    p true
  else
    p "Número de cuenta no valido"
  end
end

#Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
def verifica (string)
  regex = /(\d{4})-(\d{3})-(\d{3})/
  if (string =~ regex)
    # busca que exista en el string el valor dado en regex.
    p string[regex]
    #nos esta regresando solo el valor buscado .. en este caso: #=>"1234-123-123"
  else
    p nil
  end
end
=end

#Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
def verifica (string)
  regex = /(\d{4})-(\d{3})-(\d{3})/
  if (string =~ regex)
    # busca que exista en el string el valor dado en regex.(solo busca un elemento, una vez encontrado no sigue buscando)
    p string.scan(regex)
    #nos regresa todos los elementos dentro del string que coinciden con regex. #=>[["1234", "123", "123"], ["4321", "321", "311"]]
    #=> [["1234", "123", "123"]]
    p string.scan(regex).flatten
    #quita mete los elementos en un solo array: #=> ["1234", "123", "123"] para cuando solo es un numero de cuenta esta muy bien pero cuando es mas de uno..
    #=> ["1234", "123", "123", "4321", "321", "311"] no podemos identificar los dos diferentes numeros de cuenta.
  else
    p []
  end
end


verifica("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
verifica("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos")
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")


string_con_un_numero_de_cuenta = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"
#string_con_un_numero_de_cuenta = "El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos"
#string_con_un_numero_de_cuenta = "Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311"



#match2 = string_con_un_numero_de_cuenta_no_valido.match re 