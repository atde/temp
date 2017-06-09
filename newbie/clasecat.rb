class Cat

@@number_of_meters = 0
# variable de la clase donde se van a guardar los resultados del metodo que lo llame en este caso es el de run

 def initialize(nombre)
    @nombre = nombre
  end
#como nos dan un objeto que llama a la clase con un argumento .... cat_3 = Cat.new("catty")... necesitamos ponerle argumento de nombre distinto a todos nuestros nuevos objetos.
  def jump
     "Saltando..."
  end
#cuando se llame este metodo llamado desde un objeto; va a imprimir lo pedido
  def self.meow
     "Miau... Miau..."
  end
#cuando se llame este metodo llamado desde la clase, (es cuando se usa self.) va a imprimir lo pedido
  def run(numero=0)
    @@number_of_meters += numero
     "Corriendo #@@number_of_meters mts..."
  end
#cuando se llame el metodo run llamado desde un objeto; pero aqui tenemos un argumento(numero=0) el cual nos dice que el argumento se llama numero, sin embargo cuando no se le presenta argumento al metodo jump este va a tomar como defoult el valor de 0 
#se llama la variable que creamos al principio de la clasa para que en esta nos guarde la suma de cada argumento cuando este se manda a llamar.
#de esta manera imprime lo pedido con la suma total de la variable creada. 
end

#objetos creados por mi, para que se puede ejecutar el ejercicio.
cat_1 = Cat.new("beauty")
cat_5 = Cat.new("snow")
#estos dos objetos se les tuvo que agregar un argumento ya que en nuestras pruebas el objeto tambien lleva un argumento. 

#test
cat_3 = Cat.new("catty")


p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."
