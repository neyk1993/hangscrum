require 'sinatra'
require './config'
require './lib/juego.rb'
get '/' do
erb :index
end

post '/iniciarJuego' do 
erb :iniciarJuego
end