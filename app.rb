require 'sinatra'
require './config'
require './lib/juego.rb'

get '/' do
	erb :index
end

post '/iniciarJuego' do
	session['juego'] = Juego.new
	session['intentos'] = 6
	session['letras'] = session['juego'].letras
	session["palabraOculta"] = session['juego'].palabra_adivinada.join("")
	erb :iniciarJuego
end

post '/enviarLetra/:letra' do
	result = session['juego'].adivina(params['letra'])
	if result == session["palabraOculta"]
		session['intentos'] -= 1
		if session['intentos'] == 0
			return "Has perdido!!!"
		end
	end
	session["palabraOculta"] = result

	if result.index('-')
		erb :iniciarJuego
	else
		"Has ganado!!!"
	end
end

post '/enviarLetra' do
	erb :iniciarJuego
end