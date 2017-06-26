#Métodos Private, Public y Protected
#Un método public puede ser invocado por cualquiera que conoce ya sea el nombre de la clase o el nombre del objeto. Los métodos son public por defecto, excepto el método initialize que es privado.
#El método private solo se puede invocar desde el contexto del objeto actual. No se pueden invocar métodos private de otros objetos aunque sean de la misma clase. Para definir un método privado se usa la palabra reservada private en el programa.

class Cat
  CAT_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age 
  end

  def cat_years
    @age * CAT_YEARS
  end

  private

  def human_years
    @age / CAT_YEARS
  end

end

katty = Cat.new("Katty", 2)
p katty.cat_years == 14
#=>true
#p katty.human_years
#=>...private method `human_years' called for #<Cat:0x872727c @name="Katty", @age=14> (NoMethodError)

#En el ejemplo anterior podemos ver que el método privado human_year no puede ser invocado desde afuera de la clase, al contrario del método público cat_year que si es posible llamarlo desde afuera de la clase.

#Existe otro tipo de método llamado protected, estos métodos pueden ser invocados por cualquier objeto de la clase o cualquier objeto de las clases heredadas. Para definir un método protegido se usa la palabra reservada protected. Para comprender los métodos protegidos podemos seguir dos reglas:
   #Desde afuera de la clase, los métodos protected sólo actuan como métodos private.
   #Desde adentro de la clase, los métodos protected sólo son accesibles como métodos public.

class Vitamin
  def a_public_method
    "Will this work? " + a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

vitamin = Vitamin.new
p vitamin.a_public_method == "Will this work? Yes, I'm protected!"
#=>true

#En el ejemplo anterior queda demostrada la segunda regla, ya que es posible llamar a un método protected dentro de la clase.
#Por otro lado, si queremos llamar al método protegido desde afuera de la clase no sería posible realizarlo.
class Vitamin

  def a_public_method
    "Will this work? " + a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

vitamin = Vitamin.new
vitamin.a_protected_method
#=>...protected method `a_protected_method' called for #<Vitamin:0x833a574> (NoMethodError)

#Este ejemplo demuestra la primera regla, no es posible llamar a métodos protegidos desde afuera de la clase.
#Las dos reglas para métodos protected aplican también dentro del contexto de herencia.

































