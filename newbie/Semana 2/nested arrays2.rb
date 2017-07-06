=begin
 Nested Arrays 2

En este ejercicio vamos a llevar la creación de arrays y también hashes a un nivel más elevado.

Intenta comprender el siguiente método y dime si puedes, antes de correrlo saber que regresará. Te servirá descomponerlo por partes para poder analizarlo y jugar con los argumentos en cada segmento.

abecedario = ('A'..'Z').last(20)
p que_sera = Array.new(3) { abecedario.pop(2) }
Objetivos Académicos
Generar arrays y hashes dinamicamente
Utilizar bloques y los métodos nativos de ruby para agilizar la generación de código
Combinar ciclos, condiciones para hacer dinámico el acceso a arrays y hashes
Actividades
Daremos un nuevo paso en nuestro juego de Gato. Ya teniendo el tablero y sabiendo crearlo ahora queremos crear un método que cree tableros, pero que cada vez estos sean diferentes.

Existen muchas maneras para crear este método
Crea dos implementaciones diferentes
Intenta que la segunda sea compacta, elegante y COMPRENSIBLE.
Seguramente tus métodos estan bien pero no son muy realistas, crea un método que contenga el numeró real de "X" y "O". Cinco y cuatro dependiendo con cual empieces y piensa también en como crear una prueba que garantice que esto suceda.

Convertir nested arrays en hashes
Intenta convertir la tabla del ejercicio pasado en un array donde cada persona sea un hash. Para ayudarte existe un método que facilita este proceso pero requiere que tu array de arrays este en cierto formato.

Hash Docs-http://ruby-doc.org/core-1.9.3/Hash.html#method-c-5B-5D

Ejemplo:

[{"Nombre"=>"Rodrigo García", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]},...
Crea cinco pruebas donde verifiques que puedes acceder a la información y que es correcta.

 

  
=end