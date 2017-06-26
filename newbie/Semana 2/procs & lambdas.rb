=begin 

Procs & Lambdas

Procs & Lambdas
Estos son temas avanzados que verás más adelante. No les dediques mucho tiempo. Si quieres profundizar estos temas realiza el tutorial de codeacademy relacionado a procs y lambdas.

Procs
Una manera sencilla de entender los Procs es verlos como un bloque guardado que puede ser reutilizado. Este es el principio básico de funcionamiento del Proc, no tener que reescribir el bloque de código una y otra vez.

Para definir un Proc se usa Proc.new y se le pasa el bloque que se quiere guardar entre llaves {}.

count = 1
my_proc = Proc.new { count * 2 }

p my_proc.call
Es posible llamar a un Proc desde un método.

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end

p call_proc
También es posible pasarle el Proc a un método que tomaría el bloque como argumento. En este caso se usa & para convertir el proc en un bloque.

numbers = [2, 4, 7, 10]
square = Proc.new { |number| number ** 2 }
p numbers.map(&square)
Lambdas
Lambda es sólo un objeto Proc especial. Para definirlo se usa la palabra reservada lambda y el bloque entre llaves {}.

this_is_a_lambda = lambda { "This is a Lambda"}
p this_is_a_lambda.call
Los lambdas pueden también tomar argumentos.

cube = lambda { |x| x ** 3}
p cube.call(5)
También es posible pasarle un lambda a un método que tomaría el bloque como argumento.

strings = ["ruby", "java", "c++", "javascript"]
char_upcase = lambda { |char| char.capitalize}
p symbols = strings.collect(&char_upcase)
Principales diferencias entre Procs y Lambdas
1) Los Lambdas son definidos con lambda {} y los Procs con Proc.new {}.

2) Para el Proc el número correcto de argumentos es importante, mientras que un Lambda levantará una excepción.

Ejemplo de Proc sin argumentos:

# Funciona sin argumentos
t = Proc.new { |x,y| puts "I don't care about arguments! #{x}, #{y}" }
t.call
#=> I don't care about arguments! , 
Ejemplo de Lambda con número incorrecto de argumentos:

# Levanta una excepción... faltan argumentos
t = lambda { |x,y| puts "I care about arguments! #{x}, #{y}" }
t.call(5)
Ejemplo de Lambda con número correcto de argumentos:

# Funciona sólo con número correcto de argumentos
t = lambda { |x,y| puts "I care about arguments! #{x}, #{y}" }
t.call(5, 2)
#=> I care about arguments! 5, 2
3) El uso del return para un Proc es desde el método actual, mientras que el Lambda tratará el return como un método regular.

Ejemplo de Lambda con return :

# Funciona
my_lambda = lambda { return 1 }
puts "Lambda result: #{my_lambda.call}"
Ejemplo de Proc con return desde afuera del método actual:

# Levanta una excepción
my_proc = Proc.new { return 1 }
puts "Proc result: #{my_proc.call}"
Ejemplo de Proc con return desde el método actual:

# Funciona
def current_method
  my_proc = Proc.new { return 1 }
  puts "Proc result: #{my_proc.call}"
end

p current_method
=end