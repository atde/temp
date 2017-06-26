def factorial(numero)
 numero <= 1 ? 1 : (numero * factorial( numero - 1 ))
end

# Pruebas

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720