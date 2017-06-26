=begin
Edad De Una Persona

Crea la clase Person que recibe como argumentos la fecha de nacimiento y el nombre de la persona.

Define el método age y que este metodo llame otro método que se encargara de calcular la edad de la persona. Es necesario usar un método nativo de ruby que te ayude a obtener el año actual.

Al llamar el metodo de instancia years_old, este nos arrojara, private method `years_old'...(NoMethodError) trata de comprender porque sale ese mensaje
=end

class Person
#creamos una clase

  @@time = Time.new
  #creamos una variable de la clase con:
  #el metodo nativo de ruby que obtine el año actual

  def initialize(name, birth_date)
  #definimos un metodo constructor que va a recibir los atributos de cada instancia
    @name = name
    @birth_date = birth_date
    #variables de instancia
  end

  def age
  # creamos un metodo que recive el valor de nuestro metodo years_old ... y impirme el siguiente string
    years_old
    #llamamos al metodo privado.
    "#{@name} is #{years_old} years old."
    #en este string interpolamos la variable de instancia y tambien el metodo years_old para que nos regrese el resultado de este.
  end

  private
  #metodo privado solo puede ser llamado por instancias que estan dentro de la clase
  def years_old
    #creamos un metodo que va a calcular la edad actual de la persona.
    @@time.year - @birth_date
    #tenemos la variable de la clase y le agregamos el .year para que solo compara el año actual con el año que se le da en la variable de instancia @birth_date
  end

end

carlos = Person.new("Carlos", 1987)
martha = Person.new("Martha", 1991)
#instancias



#test
p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true

p carlos.years_old
#=>private method `years_old'...(NoMethodError)
#esto es por que metodo privado solo puede ser llamado por instancias que estan dentro de la clase