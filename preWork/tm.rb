def multiplication_tables(number)
  
 (1..number).each do |y|
  # le estamos dando un rango empezando del 1 hasta el number...y a ese lo llamamos y
  (1..10).each do |i|
   print "#{i *= y} \t"
  # le dimos otro rango por que queremos que nuestras multiplicacion sea del 1 al 10 nada mas y a este le llamamos i 
  # le pedimos que ponga en una sola linea cada uno de los resultados que le de i *= y con un espacio entre ellos (\t).
  end
 end

print "\n"
# le pedimos que imprima un espacio entre cada linea de los resultados para obtener un formato de resultado.
  
end



multiplication_tables(5) 
#=> 
#1    2    3    4    5    6    7    8    9    10
#2    4    6    8    10   12   14   16   18   20
#3    6    9    12   15   18   21   24   27   30
#4    8    12   16   20   24   28   32   36   40
#5    10   15   20   25   30   35   40   45   50

multiplication_tables(7)
#=>
#1    2    3    4    5    6    7    8    9    10
#2    4    6    8    10   12   14   16   18   20
#3    6    9    12   15   18   21   24   27   30
#4    8    12   16   20   24   28   32   36   40
#5    10   15   20   25   30   35   40   45   50
#6    12   18   24   30   36   42   48   54   60
#7    14   21   28   35   42   49   56   63   70




