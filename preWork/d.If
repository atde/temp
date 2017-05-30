def mode(array)
y = []
v = []
 array.each do |i|
 y << array.count(i)
 #crea un nuevo a array con la cantidad de repeticiones de cada valor.
 end

 array.each do |x|
 v << x if array.count(x) == y.max
 #crea otro nuevo array si la cantidad de repeticiones es igual al maximo en el array entonces mete el valor original en el nuevo array.
 end
 v.uniq
 #array creado sin valores repetidos
end

# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]