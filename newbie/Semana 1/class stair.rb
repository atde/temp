=begin

Clase Stair

Crea la clase Stair con atributos material y size. Asimismo, define el método larger_size_than? que permite saber si una escalera es más grande que otra. 
Es importante considerar que el método getter size no debe ser público, de tal manera que si lo tratas de usar en una instancia (stair_one.size) levantará un error.
=end

class Stair
  #defino mi clase

  def initialize(material, size)
    #definimos un metodo constructor que va a recivir los atributos de cada instancia
    @material = material
    @size = size
    #variables de instancia
  end

  def larger_size_than?(stair_2)
    #definimos un metodo en donde se comparacion de tamaño
    size > stair_2.size
    #comparamos el tamaño de la escalera de Metal y la de Madera, llamando al metodo getter size que esta protegido 
  end

  protected
  # metodo protected puede ser llamado dentro y fuera de la clase
  # Desde afuera de la clase, los métodos protected sólo actuan como métodos private.
  # Desde adentro de la clase, los métodos protected sólo son accesibles como métodos public. 

  def size
    #metodo getter 
   @size 
  end
end

#test
metal = Stair.new("Metal", 54)
wood = Stair.new("Wood", 23)
stair_one = Stair.new("Metal", 54)
#instancias, con atributos

p "Well done!" if metal.larger_size_than?(wood) #=> "Well done!"
stair_one.size #=> protected method `size' called for #<Stair:0x007fd932087740 @material="Metal", @size=54> (NoMethodError)
