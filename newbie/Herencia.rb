# superclase 

class Mammal
  def breath
    puts 'inspirar, espirar'
  end
end

# el símbolo < indica que 'Cat' es una subclase de Mammal

class Cat < Mammal
  def meow
    puts 'Miaaaaaaaaaaau'
  end
end

# el símbolo < indica que 'Dog' es una subclase de Mammal

class Dog < Mammal
  def bark
    puts 'Guauu Guauu'
  end
end

catty = Cat.new
doggy = Dog.new
catty.breath
catty.meow
doggy.breath
doggy.bark

class People
  def greeting
    "Hello!"
  end
end

class Women < People
  def greeting
    super + " from People class"
  end
end


wendy = Women.new
p wendy.greeting       
#=> "Hello! from People class"

