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



