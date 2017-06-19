=begin

Refactoring Overriding

Refactoriza usando overriding o super y agrega el código necesario para que las pruebas sean true. 
Las pruebas no deben modificarse.
=end


class SuperSay
  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)
    do_something_with(text)
  end
end

class HtmlSay < SuperSay
  def say(text)
    "<p>" + prepare_text(text) + "</p>"
  end

  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)

  end
end

class CssSay < SuperSay
  def say(text)
    "<p>" + prepare_text(text) + "</p>"
  end

  def prepare_text(text)
    do_something_with(text)
  end

  def do_something_with(text)
    text
  end
end

doc = SuperSay.new
style = SuperSay.new

#test
p doc.say("You've refactored") #== "<p>You've refactored</p>"
p style.say("I like to code") #== "I like to code"