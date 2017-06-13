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
#pedimos que nos meta hasta -num- cantidad de personas dentro de un array.


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

parser = PersonParser.new('people.csv')
people = parser.people
people[0..9]
people[1] = Person.new("maria", "fernandez", "mf@gmail.com", "123546372", "2017-01-17")

modify_person = people


#people = people(15)
person_writer = PersonWriter.new("people.csv", modify_person)
person_writer.create_csv
