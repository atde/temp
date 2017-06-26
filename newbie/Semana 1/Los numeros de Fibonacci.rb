require 'benchmark'

def fibonacci_iterative(n)
  array_fib = n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
  fib_num = array_fib[n]
end

#Driver Code:

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

puts Benchmark.measure { "a" * 1_000 }
#=>   0.000000   0.000000   0.000000 (  0.000007)


require 'benchmark'

def fibonacci_recursive(n)
  return  n  if ( 0..1 ).include? n
  ( fibonacci_recursive( n - 1 ) + fibonacci_recursive( n - 2 ) )
end


#Driver Code:

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5

puts Benchmark.measure { "a" * 1_000 }
#=>  0.000000   0.000000   0.000000 (  0.000006)


#Seguramente encontraras que el método recursivo es más lento. 
#Encuentra a que se debe esto y donde esta haciendo trabajo doble tú método. 
#Refactoriza el método y haz que sea más rápido que la otra implementación.