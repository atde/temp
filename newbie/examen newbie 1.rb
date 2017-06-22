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

#EJERCICIO 3

=begin

Race cars

En una pista de carrera se realizan ciertas pruebas de velocidad a diferentes race cars. 
Se necesita medir para cada carro la velocidad promedio de acuerdo a cinco laptimes registrados. 
El lapdistance de la pista es de 100 metros. Esta distancia es importante que la consideres constante en el programa.
Es necesario crear una clase RaceCar que contemple el nombre del carro y los tiempos de cada lap que ha registrado. 
Hay que considerar un método que retorne la velocidad promedio de cada carro, otro método que muestre el nivel de cada carro dependiendo de su velocidad (Principiante, Normal, Medio, Avanzado). 
Posteriormente, crear una clase Team que permita formar equipos de carros. 
Por último, crear un método que permita buscar si existe un determinado carro en un equipo. 
Todas las pruebas deben pasar.

Extra - Crea un metodo en team que regrese el promedio de velocidad del equipo.

Extra - Genera una tabla que muestre el coche y su nivel.
=end


class RaceCar
# racecar class

  attr_reader :name

  
  def initialize(name)
  #definimos un metodo constructor que va a recivir los atributos de cada instancia 
    @name = name
    #variable de instancia
  end
  
  def average_speed

    laptimes = 0
    5.times do |lap|
      time = rand(1..100)
      laptimes += (100 / time)
    end
    laptimes / 5
    # nos da la velocidad promedio
  end

  def level
  
    case average_speed

    when (0..20)
      'Principiante'
    when (21..40)
      'Normal'
    when (41..60)
      'Medio'
    when (61..80)
      'Avanzado' 
    #nos enseña el nivel de cada race car          
    end
  end
end

class Team < RaceCar
#definimos una clase que hereda de la clase RaceCar

  attr_reader :team

  def initialize(team)
  #definimos un metodo constructor que va a recivir los atributos de cada instancia
    @team = team
    #variables de instancia
  end

  def average_speed_of_team
    suma_equipo = 0

    team.each do |car|
      suma_equipo += car.average_speed
    end

    suma_equipo / team.length.to_f
    #calculamos el promedio de velocidad del equipo.
  end

  def team_level
    puts "|      Car        |      Level      |"
    puts " ___________________________________"
    team.each do |car|
      puts "|   #{car.name.center(10)}    |   #{car.level.center(10)}  |"
    end
  end
  #imprime la tabla 
end

car1 = RaceCar.new('Force')
car2 = RaceCar.new('Power')
car3 = RaceCar.new('Passwater')
car4 = RaceCar.new('Banjo')
car5 = RaceCar.new('Duck')
#instancias


p "car1: #{car1.average_speed} m/s #{car1.level}"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s #{car2.level}"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s #{car3.level}"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s #{car4.level}"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s #{car5.level}"
#ej. car5: 10.15 m/s

=begin 
"car1: 5 m/s Principiante"
"car2: 2 m/s Principiante"
"car3: 11 m/s Principiante"
"car4: 1 m/s Principiante"
"car5: 2 m/s Principiante"
(como corre dandom estos cambian cada vez que corre.)
=end

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)
#instancia

  def search(name, team)
    fast = ""  
    team.team.each do |car|
      if car.name == name
        return fast = "#{car.name} is a racer"
      else
        fast = "The #{name} racer don't exists in this team"
      end
    end
    fast
    #permite buscar si existe un determinado coche en un equipo
  end
  
puts
p search("Power",team_one) == "Power is a racer"
#test para buscar race car en equipo team_one
#=>true

puts
p team_one.average_speed_of_team
#calculate average speed of team
#=>5.8 (cambia siempre ya que corre random el programa)

puts
team_one.team_level
#llamamos al metodo para que nos imprima la tabla

=begin

|      Car        |      Level      |
 ___________________________________
|     Force       |   Principiante  |
|     Power       |   Principiante  |
|   Passwater     |   Principiante  |
|     Banjo       |   Principiante  |
|      Duck       |   Principiante  | 

=end


#EJERCICIO 4

=begin
  
Playlist  

Crea la clase Playlist que para inicializarla recibe 2 argumentos: name (nombre del playlist) y songs (lista de canciones).
Crea una forma para poder leer el nombre del Playlist.
Crea el método number_of_songs que regresa el número de canciones que contiene el Playlist.
Crea el método add_song que agrega una canción a la lista.
Crea el método next_song que regresa la siguiente canción del Playlist. Para esto necesitarás llevar control de cuál es la canción actual. 
Si el playlist se encuentra en la última canción debe de volver a iniciar.

Al crear una nueva instancia de Playlist la canción actual por default debería ser la primera canción de la lista que le pasen. 
=end

class Playlist
#definimos la calse
  attr_reader :name, :list

  @@number_songs = 0 
  #varialbe de clase 

  def initialize(name, list)
    #definimos un metodo constructor que va a recivir los atributos de cada instancia.
    @name = name
    @list= list
    #variables de instancia
  end

  def number_of_songs
    @list.length 
    #no da el numero de canciones que tiene la playlist
  end

  def new_song(new_song)
    @list << new_song
    #agrega una canción a la lista
  end
    
  def next_song
    if @@number_songs == list.length - 1
       @@number_songs = 0
       @list[@@number_songs]
    else
      @@number_songs = @@number_songs + 1
      @list[@@number_songs]
    end
    #regresa la siguiente canción del Playlist
  end

  def play
    @list[@@number_songs]
  end
end

playlist = Playlist.new("Classical", ["Violin Concerto No. 1 in A Minor", "Piano Concerto No. 2 in C Minor", "Symphony No. 7 in A Mayor"])
#instancias

puts
puts "Songs in Playlist: ",playlist.number_of_songs 
puts
puts "Playlist Name: ",playlist.name
puts
puts "Playslist: ",playlist.list
puts
# Agrego una nueva cancion a mi play list:
playlist.new_song("String Quartet No.2 in D:2. Scherzo")
playlist.new_song("Pices of clavecin, Book 3: Le Tic-Toc-Choc Ou Les Maillotins(18e Ordre)")
#nombre de las canciones que queremos agregar, llamamos al metodo new_song

puts "Playlist: ",playlist.list
puts #nos da espacios entre cada respuesta
puts "Playing Now: ",playlist.play
puts
puts "Siguientes en la lista"
print "2: ", playlist.next_song,"\n"
print "3: ", playlist.next_song,"\n"
print "4: ", playlist.next_song,"\n"
print "5: ", playlist.next_song,"\n"
print "1: ", playlist.next_song,"\n"

#llama al metodo next_song para que nos regrese la cancion que sigue. 


=begin 

Songs in Playlist: 
3

Playlist Name: 
Classical

Playslist: 
Violin Concerto No. 1 in A Minor
Piano Concerto No. 2 in C Minor
Symphony No. 7 in A Mayor

Playlist: 
Violin Concerto No. 1 in A Minor
Piano Concerto No. 2 in C Minor
Symphony No. 7 in A Mayor
String Quartet No.2 in D:2. Scherzo
Pices of clavecin, Book 3: Le Tic-Toc-Choc Ou Les Maillotins(18e Ordre)

Playing Now: 
Violin Concerto No. 1 in A Minor

Siguientes en la lista
2: Piano Concerto No. 2 in C Minor
3: Symphony No. 7 in A Mayor
4: String Quartet No.2 in D:2. Scherzo
5: Pices of clavecin, Book 3: Le Tic-Toc-Choc Ou Les Maillotins(18e Ordre)
1: Violin Concerto No. 1 in A Minor
=end





