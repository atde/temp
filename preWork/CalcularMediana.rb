def median(array)
 place = array.sort
 #variable with the values in order from samallest to biggest
 size = place.length
 #variable with the length of each array
 (place[(size - 1) / 2] + place[size / 2]) / 2.to_f
 #formula to gettign the median value in the array
end

# Pruebas
p median([4, 5, 6]) == 5
p median([1,2,3,4,7,6]) == 3.5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8 

#explain step by step so on paper makes sense
def median(array)
place = array.sort
 #ordena el array de min a max

 size = place.length
 # te dice el numero de valores que ahi en el array
 #3
 #6
media_parte1 = place[(size - 1)/2] 
 #place[1]
 #5
 #place[2]
 #3
 media_parte2 = place[size / 2]
 # place[1]
 #5
 # place[3] 
 #4
 media_parte3 = (media_parte1 + media_parte2) / 2.0
 # sumas el valor ( 5 + 5 ) / 2.0
 #5
 # suma el valor ( 3 + 4) / 2.0
 #3.5
end

  #place[/2] + place[len / 2]) / 2.0

p median([4, 5, 6]) == 5
p median([1,2,3,4,7,6]) == 3.5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8

 
