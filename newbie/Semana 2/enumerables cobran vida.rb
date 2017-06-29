bote_jelly_beans = []
colores = ["rojo", "azul", "amarillo" , "verde"]

20.times do 
    bote_jelly_beans << colores.sample
end

p bote_jelly_beans
puts
bote_jelly_beans.reject! { |jelly_bean| jelly_bean == "rojo" }
#reject elimina el valor dado ... si no esncuentra ningun elemento con este valor regresa nil
p bote_jelly_beans
p bote_jelly_beans.include?("rojo") == false
puts

# Dado un array de números imprime únicamente los elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index
def print_odd_indexed_integers(array)
  array.each_with_index{|item, index| p item if (index.odd? == true)}
end

# Dado un array de números regresa un array con solo sol numeros impares
# Utiliza: Enumerable#select
def odd_integers(array)
   array.select { |num|  num.odd?  }
end

# Dado un array y un límite regresa el primer numero que sea menor al límite 
# Utiliza: Enumerable#find
def first_under(array, limit)
  array.find{|num| num < limit}
end


# Dado un array de strings y regresa un nuevo array donde todos los elementos contengan al final un signo de admiración. 
# Utiliza: Enumerable#map
def add_bang(array)
  array.map{|word| word << "!" }
end

# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
  array.reduce(:+)
  #es lo mismo el .inject qu el .reduce .. suma los numeros dentro del array
  array.inject{|sum, n| sum + n }
end


# Dado un array de string reorganizalo en grupos de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
def sorted_triples(array)
 array.each_slice(3).to_a  
end

# Driver code... no modifiques nada de este código 
print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) 
# => 4
# => 8
# => 12

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]

puts sum([1, 1, 2, 3, 5]) == 12


words = %w(De esta simple manera se puede reorganizar una oración) 
#esto es lo mismo que words = ("De esta simple manera se puede reorganizar una oración").split(" ") 
#o que hacen el string.split(" ") o el %w es meter el elemento en un array y separar cada vez que encuentre un espacio en blanco:
#["De", "esta", "simple", "manera", "se", "puede", "reorganizar", "una", "oración"]

p sorted_triples(words) #== [["De", "esta", "simple"], ["manera", "puede", "se"], ["oración", "reorganizar", "una"]]                            
#si no le ponemos a este metodo en .to_a nos regresaria esto:
#[#<Enumerator: ["De", "esta", "simple", "manera", "se", "puede", "reorganizar", "una", "oración"]:each_slice(3)>]
