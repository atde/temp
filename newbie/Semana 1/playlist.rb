=begin
  
Playlist  

Crea la clase Playlist que para inicializarla recibe 2 argumentos: name (nombre del playlist) y songs (lista de canciones).
Crea una forma para poder leer el nombre del Playlist.
Crea el método number_of_songs que regresa el número de canciones que contiene el Playlist.
Crea el método add_song que agrega una canción a la lista.
Crea el método next_song que regresa la siguiente canción del Playlist. Para esto necesitarás llevar control de cuál es la canción actual. 
Si el playlist se encuentra en la última canción debe de volver a iniciar.

Al crear una nueva instancia de Playlist la canción actual por default debería ser la primera canción de la lista que le pasen. 
=end

class Playlist
#definimos la calse
  attr_reader :name, :list

  @@number_songs = 0 
  #varialbe de clase 

  def initialize(name, list)
    #definimos un metodo constructor que va a recivir los atributos de cada instancia.
    @name = name
    @list= list
    #variables de instancia
  end

  def number_of_songs
    @list.length 
    #no da el numero de canciones que tiene la playlist
  end

  def new_song(new_song)
    @list << new_song
    #agrega una canción a la lista
  end
    
  def next_song
    if @@number_songs == list.length - 1
       @@number_songs = 0
       @list[@@number_songs]
    else
      @@number_songs = @@number_songs + 1
      @list[@@number_songs]
    end
    #regresa la siguiente canción del Playlist
  end

  def play
    @list[@@number_songs]
  end
end

playlist = Playlist.new("Classical", ["Violin Concerto No. 1 in A Minor", "Piano Concerto No. 2 in C Minor", "Symphony No. 7 in A Mayor"])
#instancias

puts
puts "Songs in Playlist: ",playlist.number_of_songs 
puts
puts "Playlist Name: ",playlist.name
puts
puts "Playslist: ",playlist.list
puts
# Agrego una nueva cancion a mi play list:
playlist.new_song("String Quartet No.2 in D:2. Scherzo")
playlist.new_song("Pices of clavecin, Book 3: Le Tic-Toc-Choc Ou Les Maillotins(18e Ordre)")
#nombre de las canciones que queremos agregar, llamamos al metodo new_song

puts "Playlist: ",playlist.list
puts #nos da espacios entre cada respuesta
puts "Playing Now: ",playlist.play
puts
puts "Siguientes en la lista"
print "2: ", playlist.next_song,"\n"
print "3: ", playlist.next_song,"\n"
print "4: ", playlist.next_song,"\n"
print "5: ", playlist.next_song,"\n"
print "1: ", playlist.next_song,"\n"

#llama al metodo next_song para que nos regrese la cancion que sigue. 


=begin 

Songs in Playlist: 
3

Playlist Name: 
Classical

Playslist: 
Violin Concerto No. 1 in A Minor
Piano Concerto No. 2 in C Minor
Symphony No. 7 in A Mayor

Playlist: 
Violin Concerto No. 1 in A Minor
Piano Concerto No. 2 in C Minor
Symphony No. 7 in A Mayor
String Quartet No.2 in D:2. Scherzo
Pices of clavecin, Book 3: Le Tic-Toc-Choc Ou Les Maillotins(18e Ordre)

Playing Now: 
Violin Concerto No. 1 in A Minor

Siguientes en la lista
2: Piano Concerto No. 2 in C Minor
3: Symphony No. 7 in A Mayor
4: String Quartet No.2 in D:2. Scherzo
5: Pices of clavecin, Book 3: Le Tic-Toc-Choc Ou Les Maillotins(18e Ordre)
1: Violin Concerto No. 1 in A Minor
=end




