require 'sinatra'
require_relative "./lib/partida.rb"

get '/' do		
		@@pregunta = Partida.new
    erb :preguntados
end

post '/' do
		@resultado= "Correcta"
		erb :preguntados
end
