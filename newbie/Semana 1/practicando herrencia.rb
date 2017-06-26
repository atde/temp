class Animal
  def alive
    puts "Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli."
  end
end

class Reptile < Animal
  CooldBlood = "- Cold blooded, born on land and with scaly skin"
  def has_scales?
   puts CooldBlood
  end
end

class Mammal < Animal
  Milk = "- Drink milk when they are a baby and have hair on their body"
  def warm_blooded?
    puts Milk
  end
end

class Bird < Animal
  Feathers = "- Have feathers and are born out of hard-shelled eggs"
  def feathers
   puts Feathers
  end
end

class Fish < Animal
  Fins = "- Vertebrates that live in water and have gills, scales and fins on their body" 
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

class Macaw < Bird
  Aves = "Aves"
  def pajaros
    p Aves
  end
end

class Dolphin < Mammal
  Cetacea = "Cetacea"
  def delfin
    p Cetacea
  end
end

class Cat < Mammal
   Felidae =" Felidae"
   def gato
     p Felidae
   end
end

class Whale < Mammal
  Ferungulata = "Ferungulata"
  def ballena
   p Ferungulata
  end
end

class Snake < Reptile
  Squamata = "Squamata"
  def serpiente
    p Squamata 
  end
end


doggie = Dog.new
turtuly = Turtle.new
macawy = Macaw.new
dol_phin = Dolphin.new
cattie = Cat.new
whaaale = Whale.new
sssnake = Snake.new

doggie.alive #== Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli. 
doggie.warm_blooded? #== - Drink milk when they are a baby and have hair on their body
doggie.perro #== "Canidae"
turtuly.alive #== Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli.
turtuly.has_scales? #== - Cold blooded, born on land and with scaly skin
turtuly.tortuga #== "Testudines"
macawy.alive #== Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli.
macawy.feathers #== - Have feathers and are born out of hard-shelled eggs
macawy.pajaros #== "Aves"
dol_phin.alive #== Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli.
dol_phin.warm_blooded? #== - Drink milk when they are a baby and have hair on their body
dol_phin.delfin #== "Cetacea"
cattie.alive #== Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli.
cattie.warm_blooded? #== - Drink milk when they are a baby and have hair on their body
cattie.gato #== " Felidae"
whaaale.alive #== Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli.
whaaale.warm_blooded? #== - Drink milk when they are a baby and have hair on their body
whaaale.ballena #== "Ferungulata"
sssnake.alive #== Living organism which feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli.
sssnake.has_scales? #== - Cold blooded, born on land and with scaly skin
sssnake.serpiente #== "Squamata" 