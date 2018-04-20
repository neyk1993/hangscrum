require 'sinatra'
require './config'
require './lib/juego.rb'

get '/' do
	erb :index
end

post '/iniciarJuego' do
	session['juego'] = Juego.new
	session['letrasUsadas'] = []
	session["palabraOculta"] = session['juego'].palabra_adivinada.join("")
	erb :iniciarJuego
end

post '/enviarLetra/:letra' do
	session['letrasUsadas'].push(params['letra'])
	result = session['juego'].adivina(params['letra'])
	session["palabraOculta"] = result
	erb :iniciarJuego
end

post '/enviarLetra' do
	erb :iniciarJuego
end