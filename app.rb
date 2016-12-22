require 'sinatra'
require_relative "./lib/partida.rb"

get '/' do
		#El constructor de Partida, ya instancia la lista de preguntas con sus respuestas	
		@@puntaje = 0
		@@partida = Partida.new
	  erb :inicio_juego
end

post '/preguntados' do	
		@pregunta = @@partida.muestraPregunta()
		if @pregunta != "Fin del juego"
			@respuestas = @@partida.muestraRespuestas()
			erb :preguntados
		else
			erb :fin_del_juego
		end
end

post '/evaluar_respuesta' do
		@respuesta = params["opcion"]
		if @respuesta == @@partida.muestraRespuestaCorrecta()
			@resultado= "Correcta"
			@@puntaje +=10
		elsif @respuesta != @@partida.muestraRespuestaCorrecta()
					@resultado= "Incorrecta"
					@@puntaje -=5		
		end
		erb :resultado
end
