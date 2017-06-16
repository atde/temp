=begin 
Módulo Enumerable

El módulo Enumerable de Ruby tiene muchas funciones útiles para trabajar con Array.

Lee la documentación de este módulo, algunas de los métodos más utilizados son:

-COUNT:

count → int
count(item) → int
count { |obj| block } → int
Returns the number of items in enum through enumeration. If an argument is given, the number of items in enum that are equal to item are counted. If a block is given, it counts the number of elements yielding a true value.

ary = [1, 2, 4, 2]
ary.count               #=> 4
ary.count(2)            #=> 2
ary.count{ |x| x%2==0 } #=> 3


:detect/find:

:-DETECT

detect(ifnone = nil) { |obj| block } → obj or nil click to toggle source
detect(ifnone = nil) → an_enumerator
Passes each entry in enum to block. Returns the first for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.

If no block is given, an enumerator is returned instead.

(1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35

:-FIND:

find(ifnone = nil) { |obj| block } → obj or nil click to toggle source
find(ifnone = nil) → an_enumerator
Passes each entry in enum to block. Returns the first for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.

If no block is given, an enumerator is returned instead.

(1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35


-EACH_SLICE:

each_slice(n) { ... } → nil click to toggle source
each_slice(n) → an_enumerator
Iterates the given block for each slice of <n> elements. 
If no block is given, returns an enumerator.

(1..10).each_slice(3) { |a| p a }
# outputs below
[1, 2, 3]
[4, 5, 6]
[7, 8, 9]
[10]


-EACH_WITH_INDEX:
each_with_index(*args) { |obj, i| block } → enum click to toggle source
each_with_index(*args) → an_enumerator
Calls block with two arguments, the item and its index, for each item in enum. 
Given arguments are passed through to each().
If no block is given, an enumerator is returned instead.

hash = Hash.new
%w(cat dog wombat).each_with_index { |item, index|
  hash[item] = index
}
hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}


:find_all/select:

:-FIND_ALL:

find_all { |obj| block } → array
find_all → an_enumerator
Returns an array containing all elements of enum for which the given block returns a true value.
If no block is given, an Enumerator is returned instead.

(1..10).find_all { |i|  i % 3 == 0 }   #=> [3, 6, 9]

[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

:-SELECT:

select { |obj| block } → array
select → an_enumerator
Returns an array containing all elements of enum for which the given block returns a true value.
If no block is given, an Enumerator is returned instead.

(1..10).find_all { |i|  i % 3 == 0 }   #=> [3, 6, 9]

[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]


-FIND:

find(ifnone = nil) { |obj| block } → obj or nil click to toggle source
find(ifnone = nil) → an_enumerator
Passes each entry in enum to block. Returns the first for which block is not false. 
If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.
If no block is given, an enumerator is returned instead.

(1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35


-GROUP_BY:

group_by { |obj| block } → a_hash
group_by → an_enumerator
Groups the collection by result of the block. 
Returns a hash where the keys are the evaluated result from the block and the values are arrays of elements in the collection that correspond to the key.
If no block is given an enumerator is returned.

(1..6).group_by { |i| i%3 }   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}


:inject/reduce:

:-INJECT:
inject(initial, sym) → obj click to toggle source
inject(sym) → obj
inject(initial) { |memo, obj| block } → obj
inject { |memo, obj| block } → obj
Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.
If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element. 
If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. 
In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.
If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.

# Sum some numbers
(5..10).reduce(:+)                             #=> 45
# Same using a block and inject
(5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                          #=> 151200
# Same using a block
(5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
longest                                        #=> "sheep"

:-REDUCE:
reduce(initial, sym) → obj click to toggle source
reduce(sym) → obj
reduce(initial) { |memo, obj| block } → obj
reduce { |memo, obj| block } → obj
Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.
If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element. 
If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. 
In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.
If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.

# Sum some numbers
(5..10).reduce(:+)                             #=> 45
# Same using a block and inject
(5..10).inject { |sum, n| sum + n }            #=> 45
# Multiply some numbers
(5..10).reduce(1, :*)                          #=> 151200
# Same using a block
(5..10).inject(1) { |product, n| product * n } #=> 151200
# find the longest word
longest = %w{ cat sheep bear }.inject do |memo, word|
   memo.length > word.length ? memo : word
end
longest                                        #=> "sheep"


-MAP:
map { |obj| block } → array
map → an_enumerator
Returns a new array with the results of running block once for every element in enum.
If no block is given, an enumerator is returned instead.

(1..4).collect { |i| i*i }  #=> [1, 4, 9, 16]
(1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]

-SORT:
sort → array
sort { |a, b| block } → array
Returns an array containing the items in enum sorted, either according to their own <=> method, or by using the results of the supplied block. 
The block should return -1, 0, or +1 depending on the comparison between a and b. As of Ruby 1.8, the method Enumerable#sort_by implements a built-in Schwartzian Transform, useful when key computation or comparison is expensive.

%w(rhea kea flea).sort          #=> ["flea", "kea", "rhea"]
(1..10).sort { |a, b| b <=> a }  #=> [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]


-ZIP:
zip(arg, ...) → an_array_of_array
zip(arg, ...) { |arr| block } → nil
Takes one element from enum and merges corresponding elements from each args. 
This generates a sequence of n-element arrays, where n is one more than the count of arguments. 
The length of the resulting sequence will be enum#size. 
If the size of any argument is less than enum#size, nil values are supplied. 
If a block is given, it is invoked for each output array, otherwise an array of arrays is returned.

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]

[1, 2, 3].zip(a, b)      #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
[1, 2].zip(a, b)         #=> [[1, 4, 7], [2, 5, 8]]
a.zip([1, 2], [8])       #=> [[4, 1, 8], [5, 2, nil], [6, nil, nil]]

=end

#Crea los siguientes métodos sin usar each.

#Strings en índices nones de un arreglo
#Regresa un arreglo con los Strings en las posiciones 1, 3, 5, 7, etc.

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]

#Strings de tamaño mayor a 5
#Regresa todos los Strings que tienen una longitud mayor a 4 caracteres.

p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]

#Primer string que empieza con 'h'
#Regresa el primer String que empieza con la letra 'h'.

p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"

#Que todos los strings empiecen con mayúscula
#Regresa el mismo Array de String que recibe pero ahora todos los Strings tienen la primera letra mayúscula.

p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]

#Agrupar strings por su primera letra
#Regresa un Hash donde las keys son las primeras letras de los Strings y los values son todos los Strings que empiezan con esa letra.

p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}

#Contar el número de 'r' en un string
#Regresa el número de letras 'r' que tiene un string.

p number_of_r("ferrocarril") == 4

#Código

def odd_indexed(arr)
end

def long_strings(arr)
end

def start_with_h(arr)
end

def capitalize_array(arr)
end

def number_of_r(str)
end

# Pruebas

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4



