=begin 
Expresiones Regulares

Cuando se trata de trabajar, procesar y manipular un string las expresiones regulares son una herramienta muy poderosa. Aunque puede parecer complicado entender como usarlas una vez que las empiezas a usar comprenderás su poder y la elegancia con la que manipulan strings. Muchos de los métodos nativos de Ruby para strings utilizan estas expresiones.

Las Expresiones regulares se utilizan mucho en las barras de búsqueda o buscadores para poder ir encontrando patrones en textos.

Actividades

Deberás completar los siguientes métodos para que realicen lo que se indica en el comentario.

Un banco utiliza el siguiente formato en sus números de cuenta: "1234-123-123"

Crea los siguientes métodos que reciban un string parecido a los siguientes:

string_con_un_numero_de_cuenta = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"
string_con_un_numero_de_cuenta_no_valido = "El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos"
string_con_mas_de_un_numero_de_cuenta = "Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311"
Piensa bien como nombrar a cada uno. Adicional deberás crear cuatro pruebas en el Driver Code para cada método.

Métodos:

Regresa true si encuentra un numero de cuenta.
Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.
=end

#Regresa true si encuentra un numero de cuenta.
def verifica (string)
  if (string =~ /(\d{4})-(\d{3})-(\d{3})/)
    #para verificar si estabien mi expresion regular ir a https://regex101.com/r/vNJvDe/2/
    p true
  else
    p "Número de cuenta no valido"
  end
end

verifica("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
#=>true
verifica("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos")
#=>"Número de cuenta no valido"
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
#=>true
verifica("El Cliente con el número de cuenta 3-42-32 se encuentra en proceso de revisión de sus documentos")
#=>"Número de cuenta no valido"

puts

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

verifica("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
#=>"1234-123-123"
verifica("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos")
#=>nil
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
#=>"1234-123-123"
verifica("El Cliente con el número de cuenta 3-42-32 se encuentra en proceso de revisión de sus documentos")
#=>nil

puts

#Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
def verifica (string)
  regex = /(\d{4})-(\d{3})-(\d{3})/
  if (string =~ regex)
    # busca que exista en el string el valor dado en regex.(solo busca un elemento, una vez encontrado no sigue buscando)
    p string.scan(regex)
    #nos regresa todos los elementos dentro del string que coinciden con regex. #=>[["1234", "123", "123"], ["4321", "321", "311"]]
    #=> [["1234", "123", "123"]]
    #p string.scan(regex).flatten
    #.flatten quita mete los elementos en un solo array: #=> ["1234", "123", "123"] para cuando solo es un numero de cuenta esta muy bien pero cuando es mas de uno..
    #=> ["1234", "123", "123", "4321", "321", "311"] no podemos identificar los dos diferentes numeros de cuenta.
  else
    p []
  end
end
verifica("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
#=>[["1234", "123", "123"]]
verifica("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos")
#=>[]
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
#=>[["1234", "123", "123"], ["4321", "321", "311"]]
verifica("El Cliente con el número de cuenta 3-42-32 se encuentra en proceso de revisión de sus documentos")
#=>[]

puts

#Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
def verifica (string)
  regex = /(\d{4})(-)(\d{3})(-)(\d{3})(\s)?(\.)?/
  if (string =~ regex)
    # busca que exista en el string el valor dado en regex.(solo busca un elemento, una vez encontrado no sigue buscando)
    array = string.scan(regex).join.split(' ')
    #nos regresa todos los elementos dentro del string que coinciden con regex. #=>[["1234", "123", "123"], ["4321", "321", "311"]]
    #=> [["1234", "123", "123"]]
    #p string.scan(regex).flatten
    #en el caso de haber utilizado.flatten mete todos los elementos en un solo array: #=> ["1234", "123", "123"] para cuando solo es un numero de cuenta esta muy bien pero cuando es mas de uno..
    #=> ["1234", "123", "123", "4321", "321", "311"] no podemos identificar los dos diferentes numeros de cuenta.
     primero = array[0]
     first = primero.sub(/\d*(?=-\d{3})/) { |i| 'X' * i.size } 
     #substituye los primeros numeros antes de cualquier - por 'X' #=>"XXXX-123-123"
     p first.sub(/\d*(\d{3})/) { |i| 'X' * i.size } 
     #en la variable first que tiene un elemento como "XXXX-123-123" substituye los primeros numeros antes del - final por 'X' #=>"XXXX-XXX-123"
     segundo = array[1]
     #me regresa el elemento en esta pocicion. (en este caso el elemento es un string)
     #array[1] cuando el array solo tiene un elemento te da el valor de nil. 
    if segundo != nil 
      #condicion para cuando cuando el array[1] regresa nil; que lepedimos que cuando no sea nil ... 
      second = segundo.sub(/\d*(?=-\d{3})/) { |i| 'X' * i.size }
      #substituye los primeros numeros antes de cualquier - por 'X' #=>"XXXX-321-311"
      p second.sub(/\d*(\d{3})/) { |i| 'X' * i.size } 
      #en la variable second que tiene un elemento como "XXXX-321-311" substituye los primeros numeros antes del - final por 'X' #=>"XXXX-XXX-311"
    else
      #si regresa nil, el programa no le asigna ningun valor.
    end
  else
    p []
  end
end
verifica("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
#=>"XXXX-XXX-123"
verifica("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos")
#=>[]
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
#=>"XXXX-XXX-123"
#=>"XXXX-XXX-311"
verifica("El Cliente con el número de cuenta 3-42-32-23 se encuentra en proceso de revisión de sus documentos")
#=>[]

puts

def verifica (string)
  regex = /(\d{4})(-)(\d{3})(-)(\d{3})(\s)?(\.)?/
  if (string =~ regex)
    # busca que exista en el string el valor dado en regex.(solo busca un elemento, una vez encontrado no sigue buscando)
    array = string.scan(regex).join.split(' ')
    #nos regresa todos los elementos dentro del string que coinciden con regex. #=>[["1234", "123", "123"], ["4321", "321", "311"]]
    #=> [["1234", "123", "123"]]
    #p string.scan(regex).flatten
    #en el caso de haber utilizado.flatten mete todos los elementos en un solo array: #=> ["1234", "123", "123"] para cuando solo es un numero de cuenta esta muy bien pero cuando es mas de uno..
    #=> ["1234", "123", "123", "4321", "321", "311"] no podemos identificar los dos diferentes numeros de cuenta.
     primero = array[0]
     first = primero.sub(/\d*(?=-\d{3})/) { |i| 'X' * i.size } 
     #substituye los primeros numeros antes de cualquier - por 'X' #=>"XXXX-123-123"
     first_1 = first.sub(/\d*(\d{3})/) { |i| 'X' * i.size } 
     #en la variable first que tiene un elemento como "XXXX-123-123" substituye los primeros numeros antes del - final por 'X' #=>"XXXX-XXX-123"
     p "El número de cuenta #{first_1} fue acceptado. ¡Gracias!"
     segundo = array[1]
     #me regresa el elemento en esta pocicion. (en este caso el elemento es un string)
     #array[1] cuando el array solo tiene un elemento te da el valor de nil. 
    if segundo != nil 
      #condicion para cuando cuando el array[1] regresa nil; que lepedimos que cuando no sea nil ... 
      second = segundo.sub(/\d*(?=-\d{3})/) { |i| 'X' * i.size }
      #substituye los primeros numeros antes de cualquier - por 'X' #=>"XXXX-321-311"
      second_1 = second.sub(/\d*(\d{3})/) { |i| 'X' * i.size } 
      #en la variable second que tiene un elemento como "XXXX-321-311" substituye los primeros numeros antes del - final por 'X' #=>"XXXX-XXX-311"
      p "El número de cuenta #{second_1} fue acceptado. ¡Gracias!"
    else
      #si regresa nil, el programa no le asigna ningun valor.
    end
  else
    p "Número de cuenta NO valido. Favor de interntar de nuevo"
    #nos regresa este mensaje cuando la condicion en el primer if no se cumple.. en este caso es cuando el numero de cuenta no es valido. 
  end
end

verifica("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos")
#=>"El número de cuenta XXXX-XXX-123 fue acceptado. ¡Gracias!"
verifica("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos")
#=>"Número de cuenta NO valido. Favor de interntar de nuevo"
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
#=>"El número de cuenta XXXX-XXX-123 fue acceptado. ¡Gracias!"
#=>"El número de cuenta XXXX-XXX-311 fue acceptado. ¡Gracias!"
verifica("El Cliente con el número de cuenta 3-42-32-23 se encuentra en proceso de revisión de sus documentos")
#=>"Número de cuenta NO valido. Favor de interntar de nuevo"

puts

#Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.
def verifica(string)
  array =[]
  regex = string.scan(/\d{1,10}/).join
  size = regex.length
  if size % 10 == 0 
  #condicion se cumple, si cuando se divide entre 10 la variable size nos da 0.
    every_10 = regex.scan(/........../)
    #me regresa un array con 2 strings. #=>["1234123123", "4321321311"] en este caso cada string es un numero de cuenta. pensando que un numero de cuenta tiene solamente 10 numeros. #=>["1234123123", "4321321311", "0123456789"]
    every_10.each do |i|
       subs = i.sub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
       # cada string en el array lo va a dividir en 4 numero, luego los diguientes 3 y luego los ultimos 3, 
       # y por ultimo '\1-\2-\3' tras el primer elemento \1 agraga un - (el primer elemento son los primeros 4 numeros especificado (\d{4})) 
       # el segundo \2 es (\d{3}) y por ultimo el tercero \3 es (\d{3})
       #=>"4321-321-311"
       p "El número de cuenta #{subs} fue acceptado. ¡Gracias!"
    end 
  else
    p "El número de cuenta dado NO es valido. Por favor ingrese un número de cuenta valido."
  end
end

verifica("El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos") 
#=>"El número de cuenta 1234-123-123 fue acceptado. ¡Gracias!"
verifica("El Cliente con el número de cuenta 4-12-12 se encuentra en proceso de revisión de sus documentos") 
#=>"El número de cuenta dado NO es valido. Por favor ingrese un número de cuenta valido."
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311")
#=>"El número de cuenta 1234-123-123 fue acceptado. ¡Gracias!"
#=>"El número de cuenta 4321-321-311 fue acceptado. ¡Gracias!"
verifica("El Cliente con el número de cuenta 322.422.3223 se encuentra en proceso de revisión de sus documentos")
#=>"El número de cuenta 3224-223-223 fue acceptado. ¡Gracias!"
verifica("El Cliente con el número de cuenta 3232.422.3223 se encuentra en proceso de revisión de sus documentos")
#=>"El número de cuenta dado NO es valido. Por favor ingrese un número de cuenta valido."
verifica("Hay que transferir los fondos de la cuenta 1234-123-123 a la cuenta 4321-321-311 y luego a la cuenta 0123-456-789")
#=>"El número de cuenta 1234-123-123 fue acceptado. ¡Gracias!"
#=>"El número de cuenta 4321-321-311 fue acceptado. ¡Gracias!"
#=>"El número de cuenta 0123-456-789 fue acceptado. ¡Gracias!"


