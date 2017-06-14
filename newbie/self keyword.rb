#Ruby tiene una palabra reservada que sirve para hacer referencia a un objeto dentro de su definición. Aunque el uso de self cambia dependiendo del contexto en el que se llame.
#Lo primero que tienes que comprender es self dentro del contexto global. Escribe lo siguiente en un programa nuevo. Que dice?

puts "self es igual a: #{self}"
#=> self es igual a: main
#Todo programa de ruby corre dentro de un objeto llamado main que es automáticamente creado cada vez que el programa es interpretado. Este objeto es el contexto más alto del programa o el top-level namespace.

#Self en tres diferentes contextos
#Ahora conoceremos los tres contextos en los que puedes llamar self dentro de una clase y para que sirven. 
#El primero y algo que seguro no utilizaras es:
 class DummyClass
  puts "Esto esta corriendo cuando se define la clase"
  puts "En este contexto self es igual a: #{self}"
 end
 #=> Esto esta corriendo cuando se define la clase
 #=> En este contexto self es igual a: DummyClass

 #Ahora envolveremos este código dentro de un método. 
  class DummyClass

    def intance_method
        puts "Dentro de un método de instancia"
        puts "En este contexto self es igual a: #{self}"
    end
  end

  dummy_class = DummyClass.new()
  puts dummy_class.intance_method

  #=> Dentro de un método de instancia
  #=> En este contexto self es igual a: #<DummyClass:0x007fb854887368>
  #La representación en un string, de un objeto, por default es el nombre del objeto y una representación encriptada de su id: #<DummyClass:0x007fac92043738>. Por ello podemos ver que dentro de un método de instancia self se refiere a una instancia especifica de la clase.
  
  #Finalmente nos quedan los class methods. Para definir uno de estos métodos hay que utilizar justamente la palabra self dentro de su nombre para hacer referencia a la clase. Agrega el siguiente método de clase a tu DummyClass.
  class DummyClass

    def self.class_method
            puts "Dentro de un método de clase"
        puts "En este contexto self es igual a: #{self}"
    end
  end

  dummy_class = DummyClass.new()
  puts DummyClass.class_method 

  #=> Dentro de un método de clase
  #=> En este contexto self es igual a: DummyClass 


























