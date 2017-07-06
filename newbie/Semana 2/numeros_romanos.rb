=begin
Números Romanos

El sistema de numeración romana es un sistema de numeración no posicional que se desarrolló en la Antigua Roma y se utilizó en todo el Imperio romano.

Este ejercicio regresa a las bases de lo que es un código. Nuestro sistema de numeración representa con símbolos números, las computadoras lo hacen lo hacen con ceros y unos y los romanos lo hacían con letras.

Escrito - Cinco
Sistema Arábigo - 5
Sistema Binario (computadoras) - 00000101
Sistema Romano - V

Palitos - |||||

La siguiente tabla muestra los símbolos válidos en el sistema de los números romanos, y sus equivalencias en el sistema decimal:

I 1
V 5
X 10
L 50
C 100
D 500
M 1000
Objetivos Académicos
Uso del Ruby Case Statement.
Aprender a comprender el problema, la solución y su lógica.
Factorización de un Case Statement complejo.
Actividades
Al principio los romanos no se complicaban restando como se hace en el IV o IX si no que lo hacian más fácil el 9 era VIIII.

Eventualmente, a alguien terriblemente inteligente se le ocurrió poner un numero menor antes del mayor, lo que quiere decir que hay que restar uno al numero mayor. Por ello se te complicará más este ejercicio.

En este ejercicio crearas un programa que convierta integers a números romanos modernos.

Puedes empezar por crear un método para el sistema viejo para ir calentando pero la meta es crear el programa para el sistema nuevo que será más difícil.

Primero intenta escribir el programa utilizando el Case Statement, luego intenta refactorizarlo a utilizar un método más complejo, para ello investiga cual es la lógica para pasar de números arábigos a romanos.

Te recomendamos usar pseudocódigo y comprender la lógica antes de empezar a escribir. No intentes ser inteligente si no que aprende a apoyarte de estrategias que te ayuden a partir tu problema en problemas más fáciles de resolver DYV.

Algoritmo divide y vencerás- https://es.wikipedia.org/wiki/Algoritmo_divide_y_vencer%C3%A1s
En la cultura popular, divide y vencerás hace referencia a un refrán que implica resolver un problema difícil, dividiéndolo en partes más simples tantas veces como sea necesario, hasta que la resolución de las partes se torna obvia. La solución del problema principal se construye con las soluciones encontradas.

Utiliza este estético driver code para verificar el funcionamiento correcto del programa. Si quieres puedes extenderlo.

Drive code... this should print out trues.

a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"


puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 

=end

class Fixnum
  ROMAN_NUMBERS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
        0 => "",  
  }
  def roman
    return '' if self == 0
    ROMAN_NUMBERS.each do |value, letter|
      return ( letter * (self / value)) << (self % value).roman if value <= self
    end
    return (self % value).roman
  end
end

require 'test/unit'

class NumberTest < Test::Unit::TestCase
  def test_0; assert_equal('',0.roman); end
  def test_1; assert_equal('I',1.roman); end
  def test_2; assert_equal('II',2.roman); end
  def test_3; assert_equal('III',3.roman); end
  def test_4; assert_equal('IV',4.roman); end
  def test_5; assert_equal('V',5.roman); end
  def test_6; assert_equal('VI',6.roman); end
  def test_7; assert_equal('VII',7.roman); end
  def test_8; assert_equal('VIII',8.roman); end
  def test_9; assert_equal('IX',9.roman); end
  def test_10; assert_equal('X',10.roman); end
  def test_11; assert_equal('XI',11.roman); end
  def test_12; assert_equal('XII',12.roman); end
  def test_13; assert_equal('XIII',13.roman); end
  def test_14; assert_equal('XIV',14.roman); end
  def test_15; assert_equal('XV',15.roman); end
  def test_16; assert_equal('XVI',16.roman); end
  def test_20; assert_equal('XX',20.roman); end
  def test_30; assert_equal('XXX',30.roman); end
  def test_40; assert_equal('XL',40.roman); end
  def test_50; assert_equal('L',50.roman); end
  def test_60; assert_equal('LX',60.roman); end
  def test_70; assert_equal('LXX',70.roman); end
  def test_80; assert_equal('LXXX',80.roman); end
  def test_90; assert_equal('XC',90.roman); end
  def test_99; assert_equal('XCIX',99.roman); end
  def test_100; assert_equal('C',100.roman); end
  def test_200; assert_equal('CC',200.roman); end
  def test_300; assert_equal('CCC',300.roman); end
  def test_400; assert_equal('CD',400.roman); end
  def test_500; assert_equal('D',500.roman); end
  def test_600; assert_equal('DC',600.roman); end
  def test_900; assert_equal('CM',900.roman); end
  def test_1000; assert_equal('M',1000.roman); end
  def test_2000; assert_equal('MM',2000.roman); end
  def test_2003; assert_equal('MMIII',2003.roman); end
end