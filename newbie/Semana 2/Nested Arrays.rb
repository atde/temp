def table
 table = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]], ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]], ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]], ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]], ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]] 
end

puts "|     #{table[0][0]}        |     #{table[0][1]}     |      #{table[0][2] }      |      #{table[0][3]}       |   #{table[0][4]}   |"
puts "+-------------------+--------------+------------------+------------------+--------------------+"
puts "| #{table[1][0]}    | #{table[1][1]}           | #{table[1][2] }        | #{table[1][3]}          |   #{table[1][4]}  |"
puts "| #{table[2][0]} | #{table[2][1]}           | #{table[2][2] }         | #{table[2][3]}          |   #{table[2][4]}  |"
puts "| #{table[3][0]}        | #{table[3][1]}           | #{table[3][2] }        | #{table[3][3]}          |   #{table[3][4]}  |"
puts "| #{table[4][0]}      | #{table[4][1]}           | #{table[4][2] }         | #{table[4][3]}          |   #{table[4][4]}  |"
puts "| #{table[5][0]}       | #{table[5][1]}           | #{table[5][2] }        | #{table[5][3]}          |   #{table[5][4]}  |"

puts

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6