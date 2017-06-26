# headers o librerias
require "Faker"
require "Csv"
# se crea la clase persona 
class Person
  # atributos delectura y escritura
  attr_accessor :first_name, :last_name, :email, :phone, :created_at
  # metodo Constructor
  def initialize(first_name,last_name,email,phone,created_at)
    @first_name=first_name
    @last_name=last_name
    @email=email
    @phone=phone
    @created_at=created_at
  end
end
# metodo que recibe el numero de personas que se crearan 
def people(number)
  # declaramos un array vacio en el cual se guardaran las instancias u objetos que se creen con los atributos
    array=[]
    # iteracion que especifica cuantos objetos se crearan
    number.times do
      # almacenamiento de objetos en un array
      array << Person.new(Faker::Name.first_name,Faker::Name.last_name,Faker::Internet.email,Faker::PhoneNumber.phone_number,Faker::Date.backward)
    end
      # array[0]=Person.new("Rafael Jordan","Garcia","rj@gmail.com","123456789","5512345678")
    # retorna array
     array
end
# clase que contiene contiene el metodo que crea el archivo csv
class PersonWriter
  # metodo constructor
    def initialize(file,people)
      # variables de clase
    @file=file
    @people=people
    end  
# metod para crear el archivo csv
    def create_csv
      # crea el archivo csv llamando a la clase y metodo open de la libreria csv pasando como parametro el nombre del archivo y el modo de operacion
      CSV.open(@file, "w") do |csv|
        #recorre el array de objetos que se creo en el metodo people
        @people.each do |x|
          #se alamcenan el un array nuevo llamado csv  aqui se debe notar que solo se almacenan como array de arrays
           csv << [x.first_name,x.last_name,x.email,x.phone,x.created_at]
        end  
     end
    end  
end  
# se asigna el metodo people a una variable para enviar implicitamente el argumento
numberPeople=people(15)
#se puede modificar el array de objetos segun su posicion
numberPeople[5] = Person.new("Rafael Jordan","Garcia","rj@gmail.com","123456789","1992-10-15")
#se llama el el metodo nuevmente para poder ver el cambio
arr_cambiado=numberPeople
# numberPeople[0]=Person.new(["Rafael Jordan","Garcia","rj@gmail.com","123456789","5512345678"])
#instancia la clase PersonWriter haciendo un  setter
person_writer = PersonWriter.new("people.csv", arr_cambiado)
#llama al metodo de la clase haciendo un getter
person_writer.create_csv
#clase que contiene el metodo de lectura de archivos
class PersonParser
#metodo constructor
    def initialize(filename)
      # variable de instancia
      @filename=filename
    end

   def people
      # se declaar un array vacio para almacenar los datos que se leeran del archivo
      arrayPerson=[]
      # lee el archivo csv haciendo un barrido a la clase y metodo foreach de la libreria csv pasando com parametro el nombre del archivo y tipo de accion
        CSV.foreach(@filename, "r") do |row|
          #almacena las instancias y sus valores
            arrayPerson<<Person.new(row[0],row[1],row[2],row[3],row[4])
        end
        #retorno implicito del metodo
      arrayPerson    
    end
end
# instancia de la clase PersonParser enviando como parametro el nombre del archivo
parser = PersonParser.new('people.csv')
# almacena en una variable el llamado del metodo de instancia 
people = parser.people
# recorre el array que retorno el metodo people con una condicion
for i in 0..9
  p people[i]
end

# instancia la clase PersonParser enviando com parametro el nombre del archivo
parser = PersonParser.new('people.csv')
# llama al metodo people de la calse PersonParser
people = parser.people