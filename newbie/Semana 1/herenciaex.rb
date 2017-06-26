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