=begin 
Clases
Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo. 
Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información de cada tarjeta en una tabla. 
Utiliza las pruebas y la tabla que se presenta de ejemplo.
=end

class CreditCard
#definiendo la clase

  attr_reader :name, :number, :expiration, :cvc
  attr_accessor :status
  #metodos definidos

  def initialize(name, number, expiration, cvc, status)
  #definimos un metodo constructor que va a recivir los atributos de cada instancia.
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
    #variables de instancia
  end

  def information
    information = "Name: #{@name}, Number: #{@number}, Expiration: #{@expiration}, CVC: #{@cvc}, Status: #{@status}"
    #metodo que nos imprime un string con los datos que pedimos. 
  end

  def information_for_table
    information = "| #{@name.center(10)} | #{@number.center(10)} | #{@expiration.center(10)} | #{@cvc.center(10)} | #{@status.center(10)} |"
    #metodo que nos imprime un string con los datos que pedimos. 
  end

end

cards = []
#=>[]

#Cinco instancias de CreditCard:
cards[0] = CreditCard.new('Amex', '2345673444', '12/15', '2345',  '[234, 567, 456, 567, 344]')
#<CreditCard:0x007fafb219dae8 @name="Amex", @number="2345673444", @expiration="12/15", @cvc="2345", @status="[234, 567, 456, 567, 344]">
cards[1] = CreditCard.new('ScotiaBank', '2345673744', '12/16', '2845', '[234, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c185470 @name="ScotiaBank", @number="2345673744", @expiration="12/16", @cvc="2845", @status="[234, 345, 456, 567, 344]">
cards[2] = CreditCard.new('Bancomer', '2345673444', '12/15', '2645', '[234, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c185218 @name="Bancomer", @number="2345673444", @expiration="12/15", @cvc="2645", @status="[234, 345, 456, 567, 344]">
cards[3] = CreditCard.new('Serfin', '2345473454', '12/20', '1345','[234, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c184fc0 @name="Serfin", @number="2345473454", @expiration="12/20", @cvc="1345", @status="[234, 345, 456, 567, 344]">
cards[4] = CreditCard.new('BanCoppel', '2345373464', '12/18', '2445', '[567, 345, 456, 567, 344]')
#=>#<CreditCard:0x007fc54c184d68 @name="BanCoppel", @number="2345373464", @expiration="12/18", @cvc="2445", @status="[567, 345, 456, 567, 344]">

cards #=>[#<CreditCard:0x007fafb219dae8 @name="Amex", @number="2345673444", @expiration="12/15", @cvc="2345", @status="[234, 567, 456, 567, 344]">, #<CreditCard:0x007fafb219d818 @name="ScotiaBank", @number="2345673744", @expiration="12/16", @cvc="2845", @status="[234, 345, 456, 567, 344]">, #<CreditCard:0x007fafb219d728 @name="Bancomer", @number="2345673444", @expiration="12/15", @cvc="2645", @status="[234, 345, 456, 567, 344]">, #<CreditCard:0x007fafb219d638 @name="Serfin", @number="2345473454", @expiration="12/20", @cvc="1345", @status="[234, 345, 456, 567, 344]">, #<CreditCard:0x007fafb219d548 @name="BanCoppel", @number="2345373464", @expiration="12/18", @cvc="2445", @status="[567, 345, 456, 567, 344]">]


#Array con cinco objetos de tarjetas de crédito:
cards_2 = []
cards.each do |i|
  cards_2 << i.information  #llamando al metodo informacion. 
end

cards_2
#=>["Name: Amex, Number: 2345673444, Expiration: 12/15, CVC: 2345, Status: [234, 567, 456, 567, 344]", "Name: ScotiaBank, Number: 2345673744, Expiration: 12/16, CVC: 2845, Status: [234, 345, 456, 567, 344]", "Name: Bancomer, Number: 2345673444, Expiration: 12/15, CVC: 2645, Status: [234, 345, 456, 567, 344]", "Name: Serfin, Number: 2345473454, Expiration: 12/20, CVC: 1345, Status: [234, 345, 456, 567, 344]", "Name: BanCoppel, Number: 2345373464, Expiration: 12/18, CVC: 2445, Status: [567, 345, 456, 567, 344]"]

#método para mostrar datos de tarjeta:
cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

=begin
#=> Amex responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true

#=> ScotiaBank responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true

#=> Bancomer responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true

#=> Serfin responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true  

#=> BanCoppel responds to:
    Name: true
    Number: true
    Expiration: true
    cvc: true
    Get status: true
    Set status: true   
=end


#Imprime la información de cada tarjeta en una tabla:

cards_3 = []
cards.each do |i|
  cards_3 << i.information_for_table  #llamando al metodo informacion_for_table
end

cards_3
puts cabecera = "|    name    |   number   | expiration |    cvc     |          status           |"
puts margen = " -------------------------------------------------------------------------------- "
puts cards_3[0]
puts cards_3[1]
puts cards_3[2]
puts cards_3[3]
puts cards_3[4]


=begin
#=>

|    name    |   number   | expiration |    cvc     |          status           |
 -------------------------------------------------------------------------------- 
|    Amex    | 2345673444 |   12/15    |    2345    | [234, 567, 456, 567, 344] |
| ScotiaBank | 2345673744 |   12/16    |    2845    | [234, 345, 456, 567, 344] |
|  Bancomer  | 2345673444 |   12/15    |    2645    | [234, 345, 456, 567, 344] |
|   Serfin   | 2345473454 |   12/20    |    1345    | [234, 345, 456, 567, 344] |
| BanCoppel  | 2345373464 |   12/18    |    2445    | [567, 345, 456, 567, 344] |
  
=end
