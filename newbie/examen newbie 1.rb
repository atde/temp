#Examen Newbie 1


#EJERCICIO 1

=begin 

Clases

Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo. 
Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información de cada tarjeta en una tabla. 
Utiliza las pruebas y la tabla que se presenta de ejemplo.
=end

class CreditCard
#definiendo la clase

  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status
  #metodos definidos

  def initialize(name, number, expiration, cvc, status)
  #definimos un metodo constructor que va a recivir los atributos de cada instancia.
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
    #variables de instancia
  end

  def information
    information = "Name: #{@name}, Number: #{@number}, Expiration: #{@expiration}, CVC: #{@cvc}, Status: #{@status}"
    #metodo que nos imprime un string con los datos que pedimos. 
  end

  def information_for_table
    information = "| #{@name.center(10)} | #{@number.center(10)} | #{@expiration.center(10)} | #{@cvc.center(10)} | #{@status.center(10)} |"
    #metodo que nos imprime un string con los datos que pedimos. 
  end

end

cards = []
#=>[]

#Cinco instancias de CreditCard:
cards[0] = CreditCard.new('Amex', '2345673444', '12/15', '2345',  '[234, 567, 456, 567, 344]')
#<CreditCard:0x007fafb219dae8 @name="Amex", @number="2345673444", @expiration="12/15", @cvc="2345", @status="[234, 567, 456, 567, 344]">
cards[1] = CreditCard.new('ScotiaBank', '2345673744', '12/16', '2845', '[234, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c185470 @name="ScotiaBank", @number="2345673744", @expiration="12/16", @cvc="2845", @status="[234, 345, 456, 567, 344]">
cards[2] = CreditCard.new('Bancomer', '2345673444', '12/15', '2645', '[234, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c185218 @name="Bancomer", @number="2345673444", @expiration="12/15", @cvc="2645", @status="[234, 345, 456, 567, 344]">
cards[3] = CreditCard.new('Serfin', '2345473454', '12/20', '1345','[234, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c184fc0 @name="Serfin", @number="2345473454", @expiration="12/20", @cvc="1345", @status="[234, 345, 456, 567, 344]">
cards[4] = CreditCard.new('BanCoppel', '2345373464', '12/18', '2445', '[567, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c184d68 @name="BanCoppel", @number="2345373464", @expiration="12/18", @cvc="2445", @status="[567, 345, 456, 567, 344]">

cards #=>[#<CreditCard:0x007fafb219dae8 @name="Amex", @number="2345673444", @expiration="12/15", @cvc="2345", @status="[234, 567, 456, 567, 344]">, #<CreditCard:0x007fafb219d818 @name="ScotiaBank", @number="2345673744", @expiration="12/16", @cvc="2845", @status="[234, 345, 456, 567, 344]">, #<CreditCard:0x007fafb219d728 @name="Bancomer", @number="2345673444", @expiration="12/15", @cvc="2645", @status="[234, 345, 456, 567, 344]">, #<CreditCard:0x007fafb219d638 @name="Serfin", @number="2345473454", @expiration="12/20", @cvc="1345", @status="[234, 345, 456, 567, 344]">, #<CreditCard:0x007fafb219d548 @name="BanCoppel", @number="2345373464", @expiration="12/18", @cvc="2445", @status="[567, 345, 456, 567, 344]">]


#Array con cinco objetos de tarjetas de crédito:
cards_2 = []
cards.each do |i|
  cards_2 << i.information  #llamando al metodo informacion. 
end

cards_2
#=>["Name: Amex, Number: 2345673444, Expiration: 12/15, CVC: 2345, Status: [234, 567, 456, 567, 344]", "Name: ScotiaBank, Number: 2345673744, Expiration: 12/16, CVC: 2845, Status: [234, 345, 456, 567, 344]", "Name: Bancomer, Number: 2345673444, Expiration: 12/15, CVC: 2645, Status: [234, 345, 456, 567, 344]", "Name: Serfin, Number: 2345473454, Expiration: 12/20, CVC: 1345, Status: [234, 345, 456, 567, 344]", "Name: BanCoppel, Number: 2345373464, Expiration: 12/18, CVC: 2445, Status: [567, 345, 456, 567, 344]"]

#método para mostrar datos de tarjeta:
cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

=begin
#=> Amex responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true

#=> ScotiaBank responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true

#=> Bancomer responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true

#=> Serfin responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true  

#=> BanCoppel responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true   
=end


#Imprime la información de cada tarjeta en una tabla:

cards_3 = []
cards.each do |i|
  cards_3 << i.information_for_table  #llamando al metodo informacion_for_table
end

cards_3
puts cabecera = "|    name    |   number   | expiration |    cvc     |          status           |"
puts margen = " -------------------------------------------------------------------------------- "
puts cards_3[0]
puts cards_3[1]
puts cards_3[2]
puts cards_3[3]
puts cards_3[4]


=begin
#=>

|    name    |   number   | expiration |    cvc     |          status           |
 -------------------------------------------------------------------------------- 
|    Amex    | 2345673444 |   12/15    |    2345    | [234, 567, 456, 567, 344] |
| ScotiaBank | 2345673744 |   12/16    |    2845    | [234, 345, 456, 567, 344] |
|  Bancomer  | 2345673444 |   12/15    |    2645    | [234, 345, 456, 567, 344] |
|   Serfin   | 2345473454 |   12/20    |    1345    | [234, 345, 456, 567, 344] |
| BanCoppel  | 2345373464 |   12/18    |    2445    | [567, 345, 456, 567, 344] |
  
=end


#EJERCICIO 2

=begin

Herencia

Crea las clases Athlete, Runner, Swimmer y Cyclist, trata de relacionarlas a través de herencia. 
Cada atleta podrá incrementar el total de la distancia recorrida y el tiempo total de ejercicio. 
Al final cada tipo de atleta deberá mostrar la distancia total recorrida, el tiempo total y la velocidad obtenida. 
Es importante considerar los casos cuando la distancia recorrida es igual a 0 y mayor que 0. 
Todas las pruebas deberán pasar. 
=end

#Athlete class
class Athlete
#definiendo la clase
  attr_accessor :total_time, :speed_record, :total_distance
  
  @@total_distance = 0
  @@total_time = 0
  #variables de la clase

  #método para validar tiempo
  def time_validation(time)
    time > 0 ? true : false
    #comparando que el tiempo no sea igual a cero 
  end

  #método para hacer ejercicio...

  #método para obtener velocidad del atleta
  def speed(distance, time)
    @speed_record = time_validation(time) == true ? (distance / time.to_f).round(2) : speed_record = 0
    #variable que guarda un elementos de la forma que le pedimos, si este cumple la condicion; metodo time_validation 
    #le pedimos que redondee el resultado a 2 puntos decimales dentro de la condicion por que si no nos regresa todos los resultados como flowt num.    
  end
end

#Runner class
class Runner < Athlete
#definimos una clase que hereda de la clase Athlete

  def initialize (distance=0, time=0)
  #le damos un valor predefinido por si los argumentos estan vacios
    @distance = distance
    @time = time
    #varialbes de instancia
  end

  def new_workout(distance, time)
    @distance += distance
    @time += time
    #varialbes de instancia que se van sumando cada vez que corre el metodo. 
    @@total_distance += distance
    @@total_time += time
  end

  def run
    "Ran #{@distance} meters, time: #{@time} seconds, speed: #{speed(@distance, @time)} m/s"
    #que nos imprima un string en donde pedimos los valores de las variables, distance, time y el resultado del metodo speed.
  end
end

#Swimmer class
class Swimmer < Athlete
#definimos una clase que hereda de la clase Athlete
  
  def initialize (distance=0, time=0)
  #le damos un valor predefinido por si los argumentos estan vacios
    @distance = distance
    @time = time
    #varialbes de instancia
  end

  def new_workout(distance, time)
    @distance += distance
    @time += distance
    #varialbes de instancia que se van sumando cada vez que corre el metodo. 
    @@total_distance += distance
    @@total_time += time
  end

  def swim
    "Swam #{@distance} meters, time: #{@time} seconds, speed: #{speed(@distance, @time)} m/s"
    #que nos imprima un string en donde pedimos los valores de las variables, distance, time y el resultado del metodo speed.
  end
end


#Cyclist class
class Cyclist < Athlete
#definimos una clase que hereda de la clase Athlete
attr_accessor :ride_bike
  
  def initialize (distance=0, time=0)
  #le damos un valor predefinido por si los argumentos estan vacios
    @distance = distance
    @time = time
    #varialbes de instancia
  end

  def new_workout(distance, time)
    @distance += distance
    @time += distance
    #varialbes de instancia que se van sumando cada vez que corre el metodo. 
    @@total_distance += distance
    @@total_time += time
  end
end


#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|

  #¿qué tipo de atleta es?

  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

=begin
Runner responds to:
  Athlete speed: true
  Get Athlete time: true
  Set Athlete time: true
  Speed record: true
  Get Distance: true
  Set Distance: true
  run method: true


Swimmer responds to:
  Athlete speed: true
  Get Athlete time: true
  Set Athlete time: true
  Speed record: true
  Get Distance: true
  Set Distance: true
  swim method: true


Cyclist responds to:
  Athlete speed: true
  Get Athlete time: true
  Set Athlete time: true
  Speed record: true
  Get Distance: true
  Set Distance: true
  ride_bike method: true  
=end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"







