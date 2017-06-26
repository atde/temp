=begin 

Argument Order Dependency

Imagina un método con más de 10 argumentos de diferentes tipos de datos. 
¿Te has dado cuenta de que el orden de los argumentos cuando llamas la función es importante? 
Si confundes el orden de los argumentos seguramente se romperá el programa.
Ruby tiene una forma de solucionar este problema que se llama keyword arguments.

Fíjate en este ejemplo:


# Sin keyword arguments
class Dog
  def initialize(name, age, vaccinated)
    ...
  end
end

dog = Dog.new("Fido", 3, false)
# BIEN
# dog = Dog.new("Fido", false, 3)
# MAL!

# Con keyword arguments
class Dog
  def initialize(name:, age:, vaccinated:)
    ...
  end
end

# Ambos BIEN
dog = Dog.new(name: "Fido", age: 3, vaccinated: false)
dog = Dog.new(name: "Fido", vaccinated: false, age: 3)
=end
=begin
Objetivos Académicos

Conocer la sintaxis de keyword arguments.
Argumentos con valores por default.

Actividades

Convierte el siguiente código a que utilice la sintaxis de keyword arguments.
 Encontrarás que a algunos argumentos se les asigna un valor por default.
=end

class ContactInformation

  def initialize(nombre:, telefono:, celular:, email:, referencia:, colonia:, municipio:, ciudad:, estado:, codigo_postal:, calle:, num_ext:, num_int: nil, pais: 'México', mayor_de_edad: false)
  #keyword arguments, a los ultimos 3 se les asigna un valor por defoult por si nos dan ese argumento automaticamente se rellena con el valor dado aqui.
    @nombre = nombre
    @telefono = telefono
    @celular = celular
    @email = email
    @referencia = referencia
    @colonia = colonia
    @municipio = municipio
    @ciudad = ciudad
    @estado = estado
    @codigo_postal = codigo_postal
    @calle = calle
    @num_ext = num_ext
    @num_int = num_int
    @pais = pais
    @mayor_de_edad = mayor_de_edad
    #variables de instancia
  end

  def to_s
    "Nombre: #{@nombre}#{mayor_de_edad}, telefono: (#{@telefono}), celular: (#{@celular}), email: <#{@email}> \n Dirección: #{@calle} #{numero}, #{@colonia}, #{@municipio}, #{@ciudad}, #{@estado}, #{@codigo_postal}, #{@pais} \n Referencia: #{@referencia}"
    #combierte los datos a un string, y llama dos metodos mayor_de_edad y numero.
  end

  def numero
    "#{@num_ext}#{"-#{@num_int}" if @num_int}"
    #le estamos diciendo que cuando exista un valor para num_int va a imprimir el num_ext - num_int... ejemplo num_ext= 2, num_it="A" lo que hace el metodo num es ... 2-"A"
  end

  def mayor_de_edad
    unless @mayor_de_edad
      "*"
      #la condicione dice que cuando @mayor_de_edad = false va a poner un asterizco. 
    end
  end
end

puts ContactInformation.new(nombre: "Juan Perez Jr", telefono: "3891089238", celular: "04455832189491", email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio: "Benito Juárez", ciudad: "México", estado: "Distrito Federal", codigo_postal: "07500", calle: "Chapultepec", num_ext: "500", num_int: "B")
#ponemos las keyswords arguments antes de su valor, si no se encuentra algun argumento este NO se debe pone... de forma en que cuando lo corres solito se llena. 
puts ContactInformation.new(nombre: "Juan Perez", telefono: "3891089238", celular:"04455832189491", email: "juanito@gmail.com", referencia: "entre calles x, z", colonia: "Cuauhtémoc", municipio: "Benito Juárez", ciudad: "México", estado: "Distrito Federal", codigo_postal: "07500", calle: "Chapultepec", num_ext: "500", num_int: nil, pais: "México", mayor_de_edad: true)

#=>Nombre: Juan Perez Jr*, telefono: (3891089238), celular: (04455832189491), email: <juanito@gmail.com> Dirección: Chapultepec 500-B, Cuauhtémoc, Benito Juárez, México, Distrito Federal, 07500, México 
   #Referencia: entre calles x, z
#=>Nombre: Juan Perez, telefono: (3891089238), celular: (04455832189491), email: <juanito@gmail.com> Dirección: Chapultepec 500, Cuauhtémoc, Benito Juárez, México, Distrito Federal, 07500, México 
   #Referencia: entre calles x, z