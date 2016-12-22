require_relative "../lib/pregunta.rb" 

class Partida 

	def initialize 

		#modo facil / dificil
		@pregunta1 = Pregunta.new
		@pregunta1.set_pregunta("¿Cuantos dedos tiene una mano?")
		@pregunta1.set_respuestas (["Cuatro", "Cinco"])
		@pregunta1.set_respuestaCorrecta (2)

		@pregunta2 = Pregunta.new
		@pregunta2.set_pregunta("¿De que color es el cielo?")
		@pregunta2.set_respuestas (["Rojo", "Celeste", "Verde"])
		@pregunta2.set_respuestaCorrecta (2)

		@pregunta3 = Pregunta.new
		@pregunta3.set_pregunta("¿Que tipo de animal es un Tigre?")
		@pregunta3.set_respuestas (["Felino", "Canino"])
		@pregunta3.set_respuestaCorrecta (1)

		@pregunta4 = Pregunta.new
		@pregunta4.set_pregunta("¿De que color es la camiseta de Boca Juniors?")
		@pregunta4.set_respuestas (["Blanco y Rojo", "Azul y Amarillo"])
		@pregunta4.set_respuestaCorrecta (2)

		@preguntas = [@pregunta1, @pregunta2, @pregunta3, @pregunta4]
		
	end 

	def muestraPregunta nroPregunta
			if nroPregunta > @preguntas.length
				return "Fin del juego"
			else
				return @preguntas[nroPregunta-1].get_pregunta
			end		
	end

	def muestraRespuestas nroPregunta
		@preguntas[nroPregunta-1].get_respuestas
	end

	def muestraRespuestaCorrecta nroPregunta
		@indice = @preguntas[nroPregunta-1].get_respuestaCorrecta
		@respuestaCorrecta = @preguntas[nroPregunta-1].get_respuestas[@indice-1]
	end
end	
