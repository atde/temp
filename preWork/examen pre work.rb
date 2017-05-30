#Tipos de Datos
# ¿Qué tipo de datos son cada una de las siguientes variables?
# ¿De que clase es cada uno y como lo puedes comprobar?
v = 9.0
w = ["1", "f", 4]
x = 1.4
y = "3"
z = {name: "Javier", email: "mail@codea.mx", fase: 1}
# Respuesta
v = Float  
w = Array
x = Float
y = String
z = Hash

# ¿De que clase es cada uno y como lo puedes comprobar?
p v = 9.0.class #=>Float
p w = ["1", "f", 4].class #=>Array  
p x = 1.4.class #=>Float
p y = "3".class #=>String
p z = {name: "Javier", email: "mail@codea.mx", fase: 1}.class #=>Hash

# Pruebas
p v = 9.0.class == Float #=>true
p w = ["1", "f", 4].class == Array #=>true
p x = 1.4.class == Float #=>true
p y = "3".class == String #=>true
p z = {name: "Javier", email: "mail@codea.mx", fase: 1}.class == Hash #=>true

#ARRAYS
# Obtén el valor del cuarto elemento de la lista `fruits` utilizando código. Y cambia el segundo valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]
# Respuesta
p fruits[3] #=>"pineapple"
fruits[1] = "banana" 
p fruits #=>["apple", "banana", "peach", "pineapple", "kiwi"]

# Obtén el último elemento de la lista `sports`.
sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
# Respuesta
p sports[-1] #=>"baseball"

# Añade un elemento más al principio de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
# Respuesta
gadgets.unshift("hard drive")
p gadgets #=>["hard drive", "smartphone", "laptop", "tablet"]

#HASHES
#Crea la variable my_hash e inicialízala a un Hash vacío.
my_hash = Hash.new

#Crea la variable grades e inicialízala a un Hash con 3 nombres de materias con una calificación correspondiente.
grades = {"Matematicas" => 9, "Fisica" => 7, "Quimica" => 9}
#A la variable grades del ejercicio anterior agrégale una materia más con su calificación correspondiente.
grades["Geometria"] = 6
p grades #=>{"Matematicas"=>9, "Fisica"=>7, "Quimica"=>9, "Geometria"=>6}
#Lee el value de la materia con la calificación más alta de grades y asígnalo a la variable highest_grade.
p highest_grade = grades["Matematicas"] #=>9

#IF/ELSE
#Crea el método large_word que nos diga si una palabra tiene muchas letras. Si la palabra tiene más de 6 letras regresa el string "Large", y si es menor "Small".

def large_word(word)
  if word.length > 6
    p "Large"
  else 
    p "Small"
  end  
end
#=>"Large"
p large_word("Paraguas") == "Large" #=>true
#=>"Small"
p large_word("Hello") == "Small" #=>true


#LOOP
#Crea el método print_plus_ten que reciba un arreglo de números, e imprima la suma de cada número más 10.

def print_plus_ten(array)
  array.each do |i|
    loop do 
      i += 10
      p i
    break if i == i 
    end
  end
end

print_plus_ten([4,3,7]) 
#=>14
#=>13
#=>17

#Crea el método plus_ten_array muy parecido al ejercicio anterior, con la diferencia que no imprime los números sino que regresa un nuevo arreglo con los elementos del primer array más 10.

def plus_ten_array(array)
  empty_array = []
  array.each do |i|
    loop do 
      i += 10
      empty_array << i
    break if i == i 
    end
  end
  empty_array
end

# Pruebas
p plus_ten_array([4,3,7]) == [14, 13, 17] #=>true



#MÉTODOS
#Crea el método odd_or_even_plus, que recibe dos argumentos: min y max. Regresa un arreglo donde si el número es par le suma 2 y si es non le suma 3

def odd_or_even_plus(min, max)
empty_array =[]
(min..max).each do |i|
  if i % 2 == 0 
    empty_array << i += 2
  else
    empty_array << i += 3 
  end
end 
  empty_array
end

# Pruebas
p odd_or_even_plus(3, 9) == [6, 6, 8, 8, 10, 10, 12] #=>true


