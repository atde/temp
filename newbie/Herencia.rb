=begin
 #HERENCIA
 #La herencia es un de las características más importantes de los lenguajes orientados a objetos. Ayuda a no repetir código (DRY). Cuando tienes clases semejantes te permite compartir propiedades y comportamiento basado en una relación jerárquica.
 #Definiciones
  #En este ejemplo:
    #VEHICLE = Bike - pedal, trike, motor

  #Vehicle es Superclass de Bike.
  #Bike es Subclass de Vehicle.

#La herencia en Ruby funciona de la siguiente manera:

class Vehicle
  def has_wheels?
    true
  end
end

class Bike < Vehicle
end

bike = Bike.new
puts bike.has_wheels?
#=> true
=end

#Actividades
#Fíjate en las siguientes clases, trata de relacionarlas y crea los métodos para hacer pasar el driver code. Pon antención en el método que te pedimos en la clase 'Vehicle' el cual hará uso de la "Self keyword" que vimos anteriormente.

class Vehicle
  attr_accessor :number_of_wheels, :number_of_gears, :color, :has_motor, :tank_size, :refuel, :age, :age!
   # usamos accessor para poder cambiar los datos.. en este caso el de age ...
   # si no quiesieramos cambiar ningun dato utilizariamos reader
  def what_am_i?
   self.class
   #te regresa el nombre de la clase que se esta utilizando
  end

  def age
    5 
    #valor por default para que imprima cuando no se le da un valor al metodo age..
  end

  def initialize(num=0)
    @age = age
    #creando la variable de instancia age ... le asignamos un valor por default con (num=0) por si este no tiene valor ...
  end
end

class Motorized < Vehicle
  #en caso de quere cambiar atributos como el color del coche ponemos que sea azul por si luego lo queremos cambiar .. igual con los demas metodos... asignamos un valor para poder modificar este mas adelante.
  def color
    "azul"
  end
  def number_of_gears
    6
  end
  def has_motor
    true
  end
  
end

class Motorbike < Motorized
end

class Car < Motorized
end

class Bicycle < Vehicle
  def initialize(n)
    @n = n 
    #se hace un initialize aqui por que en la instancia tenemos un valor .. 
  end
  def age
    @n
    #le estamos diciendo que el metodo age es igual a el valor que nos dan en la instancia.
  end
end

class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new
#instancias

vehicles = [moto, car, bike, skateboard]
#array con los vehiculos, nota como cada uno tiene una clase...

vehicles.each do |vehicle|
#cada elemento en vehiculos lo vamos a llamar 'vehicle'
  vehicle.age!
  #elemento llamando al metodo age!

  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  #metodo respond_to? es de default no la tienes que crear. 
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
  #estamos preguntando si existen los siguientes metodos ... 
end










