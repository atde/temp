class Animal
  def alive
    puts "Ser orgánico que vive, siente y se mueve por propio impulso."
  end
end

class Reptile < Animal
  CooldBlood = "Cold blooded, born on land and with scaly skin"
  def has_scales?
   puts CooldBlood
  end
end

class Mammal < Animal
  Milk = "Drink milk when they are a baby and have hair on their body"
  def warm_blooded?
    puts Milk
  end
end

class Bird < Animal
  Feathers = "Have feathers and are born out of hard-shelled eggs"
  def feathers
   puts Feathers
  end
end

class Fish < Animal
  Fins = "Vertebrates that live in water and have gills, scales and fins on their body" 
  def swim
    puts Fins
  end
end

class Dog < Mammal
  Canidae = "Canidae"
  def perro
    p Canidae
  end
end

class Turtle < Reptile
  Testudines = "Testudines"
  def tortuga
    p Testudines
  end
end

doggie = Dog.new
turtuly = Turtle.new
doggie.alive
doggie.warm_blooded?
doggie.perro
turtuly.alive
turtuly.has_scales?
turtuly.tortuga


