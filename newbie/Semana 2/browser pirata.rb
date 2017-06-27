=begin

Browser Pirata

Este ejercicio buscará que comprendas las funcionalidades básicas de un navegador y te vayas familiarizando con el protocolo que usan para comunicarse los sitios web (HTTP).

¿Sabes realmente cómo funciona un browser?


Pasos que realiza un browser para regresarte una página web:

Usuario especifica la url.
Browser hace un http request.
Browser recibe un http response (información).
Browser procesa la información.
Browser despliega la información con un formato amigable.
En este ejercicio crearemos un programa que realice todas estas actividades. Vamos a utilizar la librería Net::HTTP para traer la página y Nokogiri para parsear el HTML que regresa el servidor.

Investiga como funciona el método de NET::HTTP => .get_response

  get_response(uri_or_host, path = nil, port = nil, &block) click to toggle source
  Sends a GET request to the target and returns the HTTP response as a Net::HTTPResponse object. The target can either be specified as (uri), or as (host, path, port = 80); so:

  res = Net::HTTP.get_response(URI('http://www.example.com/index.html'))
  print res.body

  or:

  res = Net::HTTP.get_response('www.example.com', '/index.html')
  print res.body
=end

  class Page
  def initialize(url)
  end

  def fetch!
  end

  def links
  end

  def title
  end
end


class Browser
  def run!
  end
end

Browser.new.run!







