=begin 
Torteria

Un amigo acaba de abrir un negocio de Tortas y se le están quemando.
Ayúdale a crear un programa para administrar el tiempo de horneado de los diferentes tipos de tortas.

El cocinero (user stories):

Necesita preparar diferentes tipos de tortas.
Necesita meter las tortas por lotes al horno.
Y lo más importante saber cuando sacarlas.
En este ejercicio debes buscar que el diseño de tu código siga el principio de "Single Responsibility" (SRP). Esta vez no sólo en los métodos sino también en las clases.

SRP es una de las reglas descritas por Uncle Bob (Robert Martin) con el objetivo de que al hacer cambios en tu código modifiques el menor número de partes.

Esto genera que el costo de mantenimiento sea muy bajo.

Objetivos Académicos
Practicar:

Programación orientada a objetos.
Relación entre clases.
El principio de "Single Responsability".
Actividades
Diseñar un MVP
¿Qué clases crees que sean necesarias?
¿Qué atributos deben tener las clases?
¿Cuál es el comportamiento necesario para cada una?
¿Cómo van a interactuar las clases entre ellas?
¿Cómo divides el código para que cada clase y método tenga una única responsabilidad?
Finalmente debes de tener una idea general de cuáles son los features indispensables para crear el MVP.

Te recomendamos que empieces creando la funcionalidad para que puedas meter y sacar tortas del horno.

Paso 2
Piensa en cómo puedes hacer para meter varias tortas con tiempos diferentes de horneado.

Implementa una manera para saber en que etapa del horneado se encuentra cada tipo de torta. Puedes usar los siguientes estados: crudo, casi listo, listo y quemado.

Paso 3: Refactorizar
Vuelve a leer tu código y revisa que siga los siguientes principios:

¿Tu código es DRY?
¿Tus clases siguen la Ley de Demeter?
¿Tus clases son ortogonales?
¿Estás definiendo correctamente tus métodos públicos y privados?
En resumen la Ley de Demeter es:

Usar métodos de los objetos que llegaron como argumentos del mismo método.
Usar métodos de los objetos que se definieron como variables de la clase.
Usar métodos de los objetos que se definieron como variables locales dentro del método.
Ponte creativo y expande tu programa
Imagínate que otras características pudieras necesitar en una tortería.
=end
