require 'sinatra'
require_relative "./lib/partida.rb"

get '/' do		
		@@pregunta = Partida.new
    erb :preguntados
end

post '/evaluar_respuesta' do
		@respuesta = params["opcion"]
		if @respuesta == "Cinco"
			@resultado= "Correcta"
		else @resultado = "Incorrecta"
		end
		erb :preguntados
end
