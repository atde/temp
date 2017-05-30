#Removiendo vocales
#Crea el método vowels que recibe una lista de palabras words y remueve las vocales de cada string. Haz pasar la prueba correspondiente.
def vowels(array)
  empty_array = []
  array.each do |i|
    i.delete! "aeiou"
    empty_array << i
  end  
 empty_array
end
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"] #=>true
#Suma de números
#Dados dos números, que pueden ser positivos y negativos, encuentra la suma de todos los números entre ellos, incluyendo esos números también. Si los dos números son iguales, regresa alguno de los dos.

def get_sum(num1, num2)
 empty_array = []
 
 if num2 - num1 <= 0 
     v_puente = num1
     num1 = num2
     num2 = v_puente
 end
 (num1..num2).each do |i| 
   empty_array << i
  end
 empty_array.inject(:+)
end
#pruebas
p get_sum(1, 0) == 1 #=>true
p get_sum(1, 2) == 3 #=>true
p get_sum(0, 1) == 1 #=>true
p get_sum(1, 1) == 1 #=>true
p get_sum(-1, 0) == -1 #=>true
p get_sum(-1, 2) == 2 #=>true

#Palabras y caracteres
#Crea un método que reciba una oración y regrese un string señalándonos el número de palabras y caracteres que contiene, sin contar los espacios en blanco, tu método deberá pasar las siguientes pruebas:

def char_word_counter(string)
 one_big_word = string.delete(" ")
 number_of_words = string.split.count
 number_of_characters = one_big_word.length
 "This sentence has #{number_of_words} words & #{number_of_characters} characters"
end
p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters" #=>true
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters" #=>true
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters" #=>true
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters" #=>true

#Buscando en hashes
#Ahora vamos a aprovechar los Hashes como herramienta de organización para distinguir alimentos por grupo alimenticio. Para esto deberás generar un método que tome como parámetro un string que contenga una comida, y buscarlo en el siguiente hash, regresando su key como valor de retorno, si no encuentra la comida deberá regresar "comida no encontrada".

def food_group(string)
  food_groups = {"grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'], "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'], "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'], "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'], "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']}
  empty_array = []
  food_groups.each do |key , value|  
   value.each do |i|
    if string == i
     empty_array << key
    end
   end
  end
  if empty_array.join == ""
    "comida no encontrada"
  else
    empty_array.join
  end
end

# Driver code
p food_group('Crema') == "lacteo" #=>true
p food_group('Res') == "carne" #=>true
p food_group('Piña') == "fruta" #=>true
p food_group('Caña') == "comida no encontrada" #=>true