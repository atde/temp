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
  def initialize(name, songs)
    @name = name
    @songs = songs
  end

  def name
    name
  end

  def number_of_songs
    songs.count
  end

  def add_song
    songs << new_song
  end

  def next_song
    songs
  end