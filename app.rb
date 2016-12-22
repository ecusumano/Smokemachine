require 'sinatra'
require_relative "./lib/partida.rb"

get '/' do
		#El constructor de Partida, ya instancia la lista de preguntas con sus respuestas	
		@@prox_pregunta = 0
		@@puntaje = 0
		@@partida = Partida.new
	  erb :inicio_juego
end

post '/preguntados' do	
		@@prox_pregunta += 1
		@pregunta = @@partida.muestraPregunta(@@prox_pregunta)
		@respuestas = @@partida.muestraRespuestas(@@prox_pregunta)
		erb :preguntados
end

post '/evaluar_respuesta' do
		@respuesta = params["opcion"]
		if @respuesta == @@partida.muestraRespuestaCorrecta(@@prox_pregunta)
			@resultado= "Correcta"
			@@puntaje +=10
		elsif @respuesta != @@partida.muestraRespuestaCorrecta(@@prox_pregunta)
					@resultado= "Incorrecta"
					@@puntaje -=5		
		end
		erb :resultado
end
