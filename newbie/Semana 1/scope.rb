
#Local Variables within the Global Scope
#1. Crea una variable en el global_scope llamada local_var con el valor "this is my local var" después crea un método llamado return_my_local_var, este método deberá regresar simplemente local_var. Has un puts del método return_my_local_var.

local_var = "this is my local var"
#variable local en el global scope y no se puede mandar a llamar en un metodo por que esta fuera de este. 
def return_my_local_var
  local_var 
end
puts return_my_local_var
#da error no puedes mandar a llamar una variable que no esta adentro de tu metodo...

#2. Para hacer las cosas más claras dentro del método return_my_local_var cambia el valor de la variable.

local_var = "this is my local var"
#variable local en el global scope y no se puede mandar a llamar en un metodo por que esta fuera de este. 
def return_my_local_var
  local_var = "hello"
end
puts return_my_local_var
#le asignamos un valor a la variable dentro del metodo .. y es el resultado que te regresaç
#=> hello
puts local_var
#=> this is my local var

#Local Variables within a Class
#3. Ahora encierra este código dentro de una clase llamada DummyClass, crea una instancia de esta clase y manda a llamar su método return_my_local_var y has un puts de lo que regresa. Que pasa?

class DummyClass
  local_var = "this is my local var"
  def return_my_local_var
    local_var
  end
end
 var = DummyClass.new
 #instancia de una clase
 p var.return_my_local_var
 #manda a llamar el metodo
 #=> error...

#4. Encierra la definición de local_var dentro del método initialize para que esta variable pertenezca a cada instancia creada. Recuerda que este método corre cada vez que se crea una nueva instancia. Que pasa ahora?

class DummyClass
   local_var = "this is my local var"
  def initialize
    local_var
  end

  def return_my_local_var
    local_var
  end
end 
var = DummyClass.new
p var.return_my_local_var
#=>error 

#5. Por ultimo convierte local_var en una variable de instancia llamada @instance_var. Supongo que tus problemas se han arreglado. Escribe una nota de para que sirven las variables de instancia con lo que aprendiste.

class DummyClass

  def initialize
    @instance_var = "this is my local var"
  end

  def return_my_local_var
    @instance_var
  end
end 

var = DummyClass.new
p var.return_my_local_var
#=>"this is my local


#Getter y Setters
#Estos son métodos que se utilizan para poder leer y reescribir una variable de instancia. Agrega estos métodos a tu clase. Uno de ellos ya lo tienes
#Aquí los métodos empiezan con get y set, esto simplemente es únicamente para comprender cada uno por convención simplemente deben llamarse @instance_var y @instance_var=.
class DummyClass
# Este es un getter
  def instance_var
    @instance_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end
end

dummy_class = DummyClass.new

#Los setters por convención siempre se escriben con un = al final dando a entender que ese método sobre-escribe una variable. Además esa sintaxis permite utilizarlos de las siguientes dos formas.
p dummy_class.instance_var=("Bar")
p dummy_class.instance_var   =    "Baz"


#Class Variables
#Dentro de tu clase DummyClass en la parte de arriba define la siguiente variable de clase: @@class_variable = "This is a class variable"
#Crea un setter y un getter y sigue estos pasos para comprender el comportamiento de estas variables.
  #Crea una instancia de DummyClass guardándola como dummy_1
  #Crea otra instancia de DummyClass guardándola como dummy_2
  #Imprime el valor de dummy_1.class_variable y de dummy_2.class_variable. Son iguales?
  #Cambia el valor de dummy_1.class_variable = "New value for the class variable".
  #Vuelve a Imprimir el valor de dummy_1.class_variable y de dummy_2.class_variable. Son iguales?
   #Comprendiste lo que paso? si no te ha quedado claro repite esos pasos pero con @instance_var.
class DummyClass

  @@class_variable = "This is a class variable"
  
  def instance_var
    @instance_var
  end

  def instance_var=(value)
    @instance_var = value
  end

end

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new
dummy_1.instance_var = "New value for the class variable"

p dummy_1.instance_var #=> "New value for the class variable"
p dummy_2.instance_var #=> nil

#Global variables and constants
#Fuera de la clase en el alcanze global crea las siguientes variables: $global_var = "This is a global variable" , CONSTANT = 3.1416 
#Aunque parezca repetitivo crea setters y getters para las dos variables dentro del alcance global y luego repite lo mismo dentro de la clase.
#Ahora juega haciendo cambios de estas variables tanto globalmente como por medio de una instancia.Si recibiste algún error? busca que quiere decir dicho error.
  #Puedes definir un setter para la constante?
  #Llama los getters del alcance global de las dos variables
  #Modifica el valor de la variable global dentro del alcance global
  #Crea una instancia de DummyClass guardándola como dummy_1
  #Llama los getters por medio de esta instancia de las dos variable
  #Modifica por medio de esta instancia la variable global y luego llama su getter global.

$global_var = "This is a global variable"
CONSTANT = 3.1416 

def instance_var
  $global_var
end

def instance_var(value)
  $global_var = value
end

class DummyClass

  def instance_var
    $global_var
  end

  def instance_var(value)
    $global_var = value
  end

end

dummy_1 = DummyClass.new
dummy_2 = DummyClass.new

p dummy_1.instance_var
p dummy_2.instance_var


#Scope variable name begins with:

     #global      $

     #constant  [A-Z]

     #class      @@

     #instance   @

     #local     [a-z] or _













