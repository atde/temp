def leap_year?(year)
year % 4 == 0 && year % 100 != 0 || year % 400 == 0
#odern si importa, se tiene que dividir entre 4 y aparte ser divisible entre 100 o 400 para que sea un año bisiesto
end

# Pruebas

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true

