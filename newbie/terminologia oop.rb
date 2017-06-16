=begin

Terminología Oop

Programación orientada a objetos (OOP)

Objetivos Académicos
Comprender la terminología de OOP.
Actividades
De los términos siguientes explica en 2 o 3 oraciones cada concepto. Y ejemplifícalo con: dibujos, pseudo-código o código.
 
=end
=begin
INHERITANCE:
  Inheritance is a relation between two classes. 
  The benefit of inheritance is that classes lower down the hierarchy get the features of those higher up, but can also add specific features of their own.    
=end

#Ejemplo:

class Bird  
  def preen  
    puts "I am cleaning my feathers."  
  end  
  def fly  
    puts "I am flying."  
  end  
end  
  
class Penguin < Bird  
  def fly  
    puts "Sorry. I'd rather swim."  
  end  
end  
  
p = Penguin.new  
p.preen  
p.fly  

=begin
COMPOSITION:
 Inheritance is useful, but another way to do the exact same thing is just to use other classes and modules, rather than rely on implicit inheritance. 
 If you look at the three ways to exploit inheritance, two of the three involve writing new code to replace or alter functionality. 
 This can easily be replicated by just calling functions in a module. Here's an example of doing this:
=end

#Ejemplo:

class Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

=begin
In this code I'm not using the name Parent, since there is not a parent-child is-a relationship. 
This is a has-a relationship, where Child has-a Other that it uses to get its work done. 
When I run this I get the following output:

$ ruby ex44e.rb
OTHER implicit()
CHILD override()
CHILD, BEFORE OTHER altered()
OTHER altered()
CHILD, AFTER OTHER altered()
=end

=begin
ENCAPSULATION:
 Encapsulation is the packing of data and functions into a single component. 
 Encapsulation means that the internal representation of an object is hidden from the outside. 
 Only the object can interact with its internal data. Public methods can be created to open a defined way to access the logic inside an object.
  Encapsulation reduce system complexity and increase robustness by decoupling its components.
=end

#Ejemplo:
class Document
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def set_name(name)
    @name = name
  end
end


d = Document.new('name1')
d.set_name('name1')

=begin
I can easily change the value of my document name without having to know how the Document class is implemented. 
At the end, the Document is the one responsible for udpating its internal details.
=end

Duck Typing

The Law of Demeter (ej.)
Overriding Methods (and using super)
Modules
Scope
Private vs Public Methods
Instance vs Class methods and variables

=begin
Polymorphism:
 In programming languages and type theory, polymorphism (from Greek πολύς, polys, “many, much” and μορφή, morphē, “form, shape”) is the provision of a single interface to entities of different types.
 Here’s a simple example in Ruby with inheritance :
=end

class Document
  def initialize
  end

  def print
    raise NotImplementedError, 'You must implement the print method'
  end
end

class XmlDocument < Document

  def print
    p 'Print from XmlDocument'
  end
end

class HtmlDocument < Document

  def print
    p 'Print from HtmlDocument'
  end
end

XmDocument.new.print # Print from XmlDocument
HtmlDocument.new.print # Print from HtmlDocument

=begin
 As you can see, we sent the same message to different object and got different result. 
 The print method is a single interface to entities of different types : XmlDocument and HtmlDocument.
=end

Separation of Concerns
Recursos Externos
Practical Object Oriented Programming in Ruby (POODR)
