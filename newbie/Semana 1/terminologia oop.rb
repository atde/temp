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

=begin
DUCK TYPING:

A estas alturas, te habrás dado cuenta de que en Ruby no se declaran los tipos de variables o métodos: todo es un objeto. Los objetos en Ruby pueden ser modificados: siempre se pueden añadir métodos a posteriori. 
Por lo tanto, el comportamiento del objeto, puede alejarse de aquel suministrado por su clase.
En Ruby, nos fijamos menos en el tipo (o clase) de un objeto y más en sus capacidades. 
Duck Typing se refiere a la tendencia de Ruby a centrarse menos en la clase de un objeto, y dar prioridad a su comportamiento: qué métodos se pueden usar, y qué operaciones se pueden hacer con él.

Se llama "Duck Typing" porque está basado en el Test del Pato (Duck Test):

"Si camina como un pato, nada como un pato y hace "quack", podemos tratarlo como un pato" by James Whitcomb Riley
=end

# Comprobamos qué objetos responden al método t_str 
puts ('Una cadena'.respond_to? :to_str)   # => true  
puts (Exception.new.respond_to? :to_str)  # => true  
puts (4.respond_to? :to_str) # => false

=begin
Este ejemplo, es una forma simple de la filosofía "pato typing": si un objeto hace quack como un pato (o actúa como un string), pues trátalo como un pato (o una cadena). 
Siempre hay que tratar a los objetos por lo que pueden hacer, mejoer que hacerlo por las clases de las que proceden o los módulos que incluyen.

Las excepciones (Exceptions) son un tipo de string que tienen información extra asociada con ellas. 
Sin embargo, aunque ellas no son una subclase de "String", pueden ser tratadas como tales.
=end

#EJEMPLO:
class Pato  
  def quack  
    'Quack!'  
  end  
 
  def nadar  
    'Paddle paddle paddle...'  
  end  
end  
 
class Ganso  
  def honk  
    'Honk!' # onomatopia de un pato  
  end  
  def nadar  
    'Splash splash splash...'  
  end  
end  
 
class GrabadoraDePatos
  def quack  
    play  
  end  
 
  def play  
    'Quack!'  
  end  
end  
 
# En este método, la Grabadora
# se comporta como un Pato  
def haz_quack(pato)  
  pato.quack 
end  
puts haz_quack(Pato.new)  
puts haz_quack(GrabadoraDePatos.new)  
 
# Para este método, el Ganso
# se comporta como un Pato
def haz_nadar(pato)  
  pato.nadar  
end  
puts haz_nadar(Pato.new)  
puts haz_nadar(Ganso.new)

=begin 
THE LAW OF DEMETER:

The law of demeter fundamentally describes following things: 

Each unit should have only limited knowledge about other units: only units "closely" related to the current unit.
Each unit should only talk to its friends; don't talk to strangers.
Only talk to your immediate friends.
In our context as programmers, an object should avoid calling on methods of a member object returned by another method. 
For many modern object oriented languages that use a dot as field identifier, the law can be stated simply as “use only one dot”. 
That is, the code a.b.Method() breaks the law where a.Method() does not.

Ruby on Rails Bad smell code:

class Project < ActiveRecord::Base
  belongs_to :user
end

project.user.name
project.user.address
project.user.cellphone

These lines break law of demeter. To solve this we should use methods like as:

project.user_name
project.user_address
Project.user_cellphone

Now, this follows the law of demeter. But if we use methods for each field then we need to add bunch of methods in the model.

class Project < ActiveRecord::Base
  belongs_to :user
  def user_name
    user.name
    end
  def user_address
    user.address
  end
  def user_cellphone
    user.cellphone
  end
end

class User < ActiveRecord::Base
  has_many :projects
end
 

To remove above bad smell Rails provides a helper method delegate which utilizes the DSL way to generates the wrapper methods. 
This is the best practice.
delegate:
The concept of delegation is to take some methods and send them off to another object to be processed.
Options:

:to - Specifies the target object
:prefix - Prefixes the new method with the target name or a custom prefix
:allow_nil - if set to true, prevents a NoMethodError to be raised

class Project < ActiveRecord::Base
  belongs_to :user
    delegate :name, :address, :cellphone, to: :user, prefix: true, allow_nil: true
end

class User < ActiveRecord::Base
  has_many :projects
end

project.user_name

project.user_address

This is how the method can now be accessed with delegate enabled.
Now, we do not break the law of demeter. 
Due to addition of allow_nil if the project  does not have any user then we will just get nil when calling name and no exception!
Now we know what the law of demeter is . 
But why use it ?. Most of the blog posts out there does not answer this specific question. 
What are the benefits or advantages of implementing law of demeter in our ruby softwares?.
In general , Law of demeter is an example of loose coupling which states that one component should not heavily rely on other components for getting the job done. 
Not when we decrease this coupling. Things are much much easier to change.
But what about the famous method chaining we are used to ?
But  If we followed it all the time we could never do method chaining
Method chains are what makes ruby well ruby !  As an example, here’s a method which takes a string and generates a “slug” for generating a friendly url:

def slug(string) 

  string.strip.downcase.tr_s('^[a-z0-9]', '-‘) 

end

That’s three levels of method call chaining. That does not follow the Law of Demeter.
But the law never says anything about the number of methods called, or the number of objects a method uses. 
It is strictly concerned with the number of types a method deals with.

The #slug method expects a String, and calls three methods, each one returning… another String. 
In fact, because it only calls methods for the type of object (String) passed into it as parameters, we can conclude that it follows  the Law of Demeter.
=end

=begin 
OVERRIDING METHODS (AND USING SUPER):

Method overriding, in object oriented programming, is a language feature that allows a subclass to provide a specific implementation of a method that is already provided by one of its superclasses. 
The implementation in the subclass overrides (replaces) the implementation in the superclass.
=end
#EJEMPLO:
class A  
  def a  
    puts 'In class A'  
  end  
end  
  
class B < A  
  def a  
    puts 'In class B'  
  end  
end  
  
b = B.new  
b.a  
#=>In class B
#The method a in class B overrides the method a in class A.

=begin
#USING SUPER

The way super handles arguments is as follows:

When you invoke super with no arguments Ruby sends a message to the parent of the current object, asking it to invoke a method of the same name as the method invoking super. 
It automatically forwards the arguments that were passed to the method from which it's called.
Called with an empty argument list - super()-it sends no arguments to the higher-up method, even if arguments were passed to the current method.
Called with specific arguments - super(a, b, c) - it sends exactly those arguments.
An example (p038bicycle.rb) from Ruby for Rails book highlights this:
=end

class Bicycle  
  attr_reader :gears, :wheels, :seats  
  def initialize(gears = 1)  
    @wheels = 2  
    @seats = 1  
    @gears = gears  
  end  
end  
  
class Tandem < Bicycle  
  def initialize(gears)  
    super  
    @seats = 2  
  end  
end  

t = Tandem.new(2)  
puts t.gears  
puts t.wheels  
puts t.seats  
b = Bicycle.new  
puts b.gears  
puts b.wheels  
puts b.seats  

#The output is:

#>ruby p038bicycle.rb  
#2  
#2  
#2  
#1  
#2  
#1  
#>Exit code: 0  


=begin 
MODULES

A Module is a collection of methods and constants. 
The methods in a module may be instance methods or module methods. 
Instance methods appear as methods in a class when the module is included, module methods do not. 
Conversely, module methods may be called without creating an encapsulating object, while instance methods may not. 

In the descriptions that follow, the parameter sym refers to a symbol, which is either a quoted string or a Symbol (such as :name).
=end

module Mod
  include Math
  CONST = 1
  def meth
    #  ...
  end
end
Mod.class              #=> Module
Mod.constants          #=> [:CONST, :PI, :E]
Mod.instance_methods   #=> [:meth]

=begin
SCOPE:
Scope defines where in a program a variable is accessible. 
Ruby has four types of variable scope, local, global, instance and class. 
In addition, Ruby has one constant type. 
Each variable type is declared by using a special character at the start of the variable name as outlined in the following table.

Name Begins With  Variable Scope

$             global variable
@             instance variable
[a-z] or _    local variable
[A-Z]         constant
@@            class variable


In addition, Ruby has two pseudo-variables which cannot be assigned values. 
These are nil which is assigned to uninitialized variables and self which refers to the currently executing object. 
In the remainder of this chapter we will look at each of these variable scopes in turn.

=end

=begin 
PRIVATE VS PUBLIC METHODS

Public - can be called from anywhere

Private - The method cannot be called outside class scope. The object send message to itself

ex: the baker has bake method as public but break_eggs is private

Protected - You can call an object's protected methods as long as the default object self is an instance of the same clas as the object whose method you're calling

ex: with n protected method, c1 can ask c2 to execute c2.n, because c1 e c2 are both instances of the same class
=end

=begin 
Instance vs Class methods and variables

=end


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