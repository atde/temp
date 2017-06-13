require "Faker"
require "Csv"

class Person
  attr_accessor :first_name, :last_name, :email, :phone, :created_at

  def initialize(first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end
end

  def personas(n)
    array = []
    n.times do 
      array << Person.new(Faker::Name.first_name,Faker::Name.last_name,Faker::Internet.email,Faker::PhoneNumber.phone_number,Faker::Date.backward)
    end
  end

class PersonWriter

  def initialize(file, person)
    @file = file
    @person = person
  end
  def create_csv
    CSV.open(@file, "w") do |csv|
     people.each do |i|
      csv << [i.first_name, i.last_name, i.email, i.phone, i.created_at]
     end
    end
  end
end

number_people = personas(15)
number_people[3] = PersonWriter.new('Maria','Fernandez','airam@gmail.com','5532456376','13/06/2017 11:07AM')
array_vacio = number_people
#driver code
person_writer = PersonWriter.new("people.csv", array_vacio)
person_writer.create_csv