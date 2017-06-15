=begin

¿Es Mayor Qué?
Define los métodos private y protected para calcular la edad del gato, así como también agrega el código que se necesita para que la prueba correspondiente sea true. Revisa la documentación correspondiente.

=end


class Cat
#definiendo mi clase

  CAT_YEARS = 7
  #creamos una constante

  def initialize(age)
    #definimos un metodo constructor que va a recibir los atributos de cada instancia
    @age = age
    #variable de instancia
  end

  def es_mayor_que?(cat_2)
  # este metodo hace la comparacion de edades
    metodo_llama_otro_metodo > cat_2.metodo_llama_otro_metodo
    #coparamos la edad de katty con la de peto
  end

  protected
  # metodo protected puede ser llamado dentro y fuera de la clase
  # Desde afuera de la clase, los métodos protected sólo actuan como métodos private.
  # Desde adentro de la clase, los métodos protected sólo son accesibles como métodos public. 

  def metodo_llama_otro_metodo
    cat_years
    #llamamos al metodo privado.
  end

  private
  #metodo privado solo puede ser llamado por instancias que estan dentro de la clase

  def cat_years
  #en este metodo calculamos la edad del gato.
    @age * CAT_YEARS
  end

end

#test
katty = Cat.new(2)
peto = Cat.new(4)
p katty.es_mayor_que?(peto) == false
#=>true

# la instancia katty puede llamar ambos metodos protected y private ya que esta dentro de la clase
# en cambio como peto aunque sea una instancia ,se puede decir que esta fuera 
# de la clase ya que esta siendo enviada como argumento de del metodo y solo puede
# llamar a el metodo protected 