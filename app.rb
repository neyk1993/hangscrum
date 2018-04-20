require 'sinatra'
require './config'
require './lib/juego.rb'
get '/' do
end 

get '/juego' do
	erb :juego
end