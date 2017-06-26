=begin

Refactoring Overriding

Refactoriza usando overriding o super y agrega el código necesario para que las pruebas sean true. 
Las pruebas no deben modificarse.
=end


class SuperSay
#definimos la clase en este caso es una Super clase.
  def say(text)
  #metodo que recibe como parametro un string
    text
    #devuelve el string
  end
end

class HtmlSay < SuperSay
#clase hija
  def say(text)
  #metodo que recibe como parametro texto
    "<p>" + super + "</p>"
    #super ecxtrae el return del metodo de la clase padre y lo modifica
  end
end

class CssSay < SuperSay
#clase hija que hereda los metodos
end

doc = HtmlSay.new
style = CssSay.new
#instancias

#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"