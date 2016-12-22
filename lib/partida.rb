require_relative "../lib/pregunta.rb" 

class Partida 

	def initialize 

		#modo facil / dificil
		@pregunta1 = Pregunta.new
		@pregunta1.set_pregunta("¿Cuantos dedos tiene una mano?")
		@pregunta1.set_respuestas (["Cuatro", "Cinco"])
		@pregunta1.set_respuestaCorrecta (2)
		@pregunta1.set_imagen("mano")

		@pregunta2 = Pregunta.new
		@pregunta2.set_pregunta("¿De que color es el cielo?")
		@pregunta2.set_respuestas (["Rojo", "Celeste", "Verde"])
		@pregunta2.set_respuestaCorrecta (2)
		@pregunta2.set_imagen("cielo")

		@pregunta3 = Pregunta.new
		@pregunta3.set_pregunta("¿Que tipo de animal es un Tigre?")
		@pregunta3.set_respuestas (["Felino", "Canino"])
		@pregunta3.set_respuestaCorrecta (1)
		@pregunta3.set_imagen("tigre")

		@pregunta4 = Pregunta.new
		@pregunta4.set_pregunta("¿De que color es la camiseta de Boca Juniors?")
		@pregunta4.set_respuestas (["Blanco y Rojo", "Azul y Amarillo"])
		@pregunta4.set_respuestaCorrecta (2)
		@pregunta4.set_imagen("boca")

		@pregunta5 = Pregunta.new
		@pregunta5.set_pregunta("¿A qué país pertenece la bandera?")
		@pregunta5.set_respuestas (["Bangladesh","Japón", "Vietnam"])
		@pregunta5.set_respuestaCorrecta (2)
		@pregunta5.set_imagen("japon")

		@pregunta6 = Pregunta.new
		@pregunta6.set_pregunta("¿En qué país está la Laguna Verde?")
		@pregunta6.set_respuestas (["Bangladesh","Japón", "Bolivia"])
		@pregunta6.set_respuestaCorrecta (3)
		@pregunta6.set_imagen("bolivia")

		@pregunta7 = Pregunta.new
		@pregunta7.set_pregunta("¿Cuántas finales del mundo jugó la Selección Argentina de fútbol?")
		@pregunta7.set_respuestas (["Dos","Tres", "Cinco", "Cuatro"])
		@pregunta7.set_respuestaCorrecta (4)
		@pregunta7.set_imagen("argentina")

		@pregunta8 = Pregunta.new
		@pregunta8.set_pregunta("¿Cuántos jugadores componen un equipo de rugby?")
		@pregunta8.set_respuestas (["15","11", "20", "10"])
		@pregunta8.set_respuestaCorrecta (1)
		@pregunta8.set_imagen("rugby")

		@preguntas = [@pregunta1, @pregunta2, @pregunta3, @pregunta4, @pregunta5, @pregunta6, @pregunta7, @pregunta8]
		@proxima_pregunta = 0

	end 

	def get_es_ultima_pregunta
		if @proxima_pregunta == @preguntas.length
			return true
		else
			return false
		end
	end

	def set_ultima_pregunta
		@proxima_pregunta = @preguntas.length
	end

	def muestraPregunta 
			@proxima_pregunta += 1
			if @proxima_pregunta > @preguntas.length
				return "Fin del juego"
			else
				return @preguntas[@proxima_pregunta-1].get_pregunta
			end		
	end

	def muestraRespuestas 
		@preguntas[@proxima_pregunta-1].get_respuestas
	end

	def muestraRespuestaCorrecta 
		@indice = @preguntas[@proxima_pregunta-1].get_respuestaCorrecta
		@respuestaCorrecta = @preguntas[@proxima_pregunta-1].get_respuestas[@indice-1]
	end

	def obtieneImagen 
		@preguntas[@proxima_pregunta-1].get_imagen
	end
end	
