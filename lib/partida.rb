require_relative "../lib/pregunta.rb" 


class Partida 

	def initialize 
		@pregunta1 = Pregunta.new
		@pregunta1.set_pregunta("¿Cuantos dedos tiene una Mano?")
		@pregunta1.set_respuestas (["Cuatro", "Cinco"])
		@pregunta1.set_respuestaCorrecta (2)

		@pregunta2 = Pregunta.new
		@pregunta2.set_pregunta("¿De que color es el cielo?")
		@pregunta2.set_respuestas (["Rojo", "Celeste"])
		@pregunta2.set_respuestaCorrecta (2)

		@preguntas = [@pregunta1, @pregunta2]
		
	end 

	def muestraPregunta nroPregunta
		@preguntas[nroPregunta-1].get_pregunta
	end

	def muestraRespuestas nroPregunta
		@preguntas[nroPregunta-1].get_respuestas
	end
end	
