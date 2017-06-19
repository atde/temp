 class Employee
#definiendo la clase
 attr_reader :name, :salary, :deposit_account, 
 attr_writer :email
  def initialize(name, email, salary, deposit_account)
  #definimos un metodo constructor que va a recivir los atributos de cada instancia.
  @name = name
  @email = email
  @salary = salary
  @deposit_account = deposit_account
  #varialbes de instancia
  end

  def deposit_account
    @deposit_account = deposit_account.to_s
    @deposit_account = @deposit_account[-1..5]
    "***** #{@deposit_account}"
  end
end

puts employee
=> Juan Perez <email: juan@gmail.com> acct: 123456512