=begin 

Nested Arrays

"War is ninety percent information." (Napoleon Bonaparte)

Vivimos en una era en la que la información esta rigiendo cualquier industria y las personas que tengan la posibilidad de guardarla, procesarla y analizarla serán los que adquieran más poder.

Conocemos ya muchos beneficios que nos ofrece un Array, pues ahora los vamos a multiplicar Array * Array.

Como un Array puede tomar cualquier objeto como elemento, y un Array es un objeto puedes crear un Array de Arrays y con ello empezar a organizar tu información en dos dimensiones, tres o más. A esto se le llama Nested Arrays.

Como ejemplo podemos crear una representación del juego gato.

gato = [ ["X", "X", "O"],
         ["O", "X", "O"],
         ["O", "O", "X"] ]

Acceder a un elemento es fácil:

# Último elemento de la segunda fila  

gato[1][2] => "O"

por que ...
Fila [0] = ["X", "X", "O"]
Fila [1] = ["O", "X", "O"]
Fila [2] = ["O", "O", "X"]
Elemento [0] = "O"
Elemento [1] = "X"
Elemento [2] = "O"

De esta manera cada elemento tiene dos indices, el primero identifica la fila y el segundo identifica la columna. ej. array[fila][clumna]


Objetivos Académicos

Crear y comprender un Nested Array
Accesar datos en arreglos bidimensinales

Actividades

La primera actividad será crear un método que simplemente imprima la representación de un tablero de ajedrez. Representa las fichas por su nombre y los colores con una letra por ejemplo: (Torre-B, Caballo-B, Alfil-B, Reina-B, Rey-B y Peón-B).

Inicialmente crea el tablero a mano y cuando te des cuenta de la labor repetitiva que es, crea un método que lo haga de manera más eficiente.


Tabla de Datos

La manera más común de organizar información es en una tabla de datos. Crea un arreglo en el que guardes la información de la siguiente tabla y después verifica que pasen las siguientes pruebas:

| Nombre           | Edad | Genero   | Grupo  | Calificaciones |
+------------------+------+----------+--------+----------------+
|Rodrigo García    | 13   |Masculino |Primero  |[9, 9, 7, 6, 8] |                 
|Fernanda Gonzalez | 12   |Femenino  |Tercero   |[6, 9, 8, 6, 8] |   
|Luis Perez        | 13   |Masculino |Primero   |[8, 7, 7, 9, 8] |                
|Ana Espinosa      | 14   |Femenino  |Segundo   |[9, 9, 6, 8, 8] |        
|Pablo Moran       | 11   |Masculino |Segundo   |[7, 8, 9, 9, 8] |

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6
=end

def tablero_ajedrez
  
  


end
























