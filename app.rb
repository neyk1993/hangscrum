require 'sinatra'
require './config'
require './lib/juego.rb'

get '/' do
	erb :index
end

post '/iniciarJuego' do
	session['juego'] = Juego.new
	session['letras'] = session['juego'].letras
	session["palabraOculta"] = session['juego'].palabra_adivinada.join("")
	erb :iniciarJuego
end

post '/enviarLetra/:letra' do
	result = session['juego'].adivina(params['letra'])
	session["palabraOculta"] = result
	session['letras'] = session['juego'].letras
	erb :iniciarJuego
end

post '/enviarLetra' do
	erb :iniciarJuego
end