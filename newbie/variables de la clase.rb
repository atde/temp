class Vehicle
@@cuenta = 0 
#variable de clase, sirve dentro de cualquier clase .. 
 def initialize
  @@cuenta += 1
  #contador ... tambien se puede poner @@cuenta = @@cuenta + 1
 end

 def self.number_of_vehicles
  "This Superclass has created #{@@cuenta} vehicles"
  #metodo de clase definido por self como esta en la clase padre self toma el nombre de la clase que llamas. sienmpre y cuando esta sea su hijo.
 end
end

class Car < Vehicle
  #hereda los atributos de la clase Vehicle
end

class Bus < Vehicle
  #hereda los atributos de la clase Vehicle
end

#test
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new
#instancias de mis clases

#metodos de clase (son definisods con la palabra self)
p Car.number_of_vehicles == "This Superclass has created 3 vehicles"
# => true