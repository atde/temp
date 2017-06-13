require "Faker"
require "CSV" 
#manda a llamar a la libraria.

class Person
 attr_accessor :first_name, :last_name, :email, :phone, :created_at
  def initialize (first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end
end
#creando variables de instancia para poder llamarlas posterior mente.

def people(num)
  array_vacio = []
  num.times do
    array_vacio << Person.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Internet.email, Faker::PhoneNumber.phone_number,Faker::Date.backward)
  end
  array_vacio
end
#pedimos que nos meta hasta -num- cantidad de personas dentro de un array, mandando llamar a la clase person generando valores con FAKE

class PersonWriter

  def initialize (file, the_array)
    @file = file
    @the_array = the_array
  end

  def create_csv
    CSV.open(@file, "w") do |csv|
      @the_array.each do |x|
        csv << [x.first_name,x.last_name,x.email,x.phone,x.created_at]
      end
    end
  end
end
# crea el archivo "file" de la variable people que contiene los datos de "array_vacio" y abrimos un csv y si no exciste lo crea.
class PersonParser

  def initialize (file)
    @file = file
  end

  def people 
    array_vacio = []
    CSV.foreach(@file) do |row|
     array_vacio << Person.new(row[0], row[1], row[2], row[3], row[4])
    end
    array_vacio
  end
end
#nos regresa un array un array con todos los todos los datos, vamos a sacar cada elemento con su indice para poder mas a delante modificar los datos. 

parser = PersonParser.new('people.csv')
people = parser.people #metodo de la instancia PersonPerser que saca las filas de csv. 
people[0..9] #que nos de los primeros 10 elementos.
people[1] = Person.new("maria", "fernandez", "mf@gmail.com", "123546372", "2017-01-17") #modificamos uno de los elementos...

modify_person = people #creamos una variable para la variable del metodo de instancia "people[1]"


#people = people(15) variable
person_writer = PersonWriter.new("people.csv", modify_person) #llamar el archivo y el array de datos
person_writer.create_csv #aqui guarda los elementos.
