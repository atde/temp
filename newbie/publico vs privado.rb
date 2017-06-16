=begin

  Público Vs Privado

El concepto de público y privado es muy importante dentro de un programa diseñado bajo el paradigma de OOP.

Un objeto se compone de información y de métodos. Depende de como diseñes el objeto, si estos son públicos o privados.

Es importante que un objeto solamente exponga lo indispensable y no toda la información que contiene. Simplemente debe compartir aquella información que otros objetos requieren para poder interactuar con ella.

Este ejercicio te ayudará a comprender como es que un objeto hace pública o privada ya sea información o métodos.

Objetivos Académicos

Comprender la diferencia entre métodos privados y públicos
Saber distinguir que hacer público de un objeto
Actividades
Deberás crear una clase Employee con las siguientes variables de instancia:

name
email
salary
deposit_account
¿Cuales de estas variables deben de tener un reader o writer? Piensa cual de estas variables deberán poder ser leídas o sobrescritas desde fuera de tu programa.

=end

class Employee
#definiendo la clase
 attr_reader :name, :salary, :deposit_account
 attr_writer :email
 #atributos 

  def initialize(name, email, salary, deposit_account)
  #definimos un metodo constructor que va a recivir los atributos de cada instancia. 
    @name = name
    @email = email
    @salary = salary
    @deposit_account = deposit_account
    #variables de instancia
  end
end

employee_1 =Employee.new('Carlos', 'cl@gmail.com', '$ 20,000.00', 'Banamex: 001011234567897')
p employee_1.email
employee_1.email = ('carlos@gmail.com')
p employee_1.email
p employee_1.name
employee_1.salary = ("$ 0.01")
p employee_1.salary


