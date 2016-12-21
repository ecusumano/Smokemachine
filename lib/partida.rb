require_relative "../lib/pregunta.rb" 


class Partida 

	def initialize 
		@pregunta1 = Pregunta.new
		@pregunta1.set_pregunta("¿Cuantos dedos tiene una Mano?")
		@pregunta1.set_respuestas (["Cuatro", "Cinco"])
		@pregunta1.set_respuestaCorrecta (2)

		@preguntas = [@pregunta1]
		
	end 

	def muestraPregunta 
		@preguntas[0].get_pregunta
	end

	def muestraRespuestas
		@preguntas[0].get_respuestas
	end
end	
