class Pregunta
	def initialize 
		@pregunta = ""
		@respuestas = ""
		@respuestaCorrecta = 0
	end

	def get_pregunta
		if (@pregunta.nil? || @pregunta.empty?)
			@pregunta = "Fin del juego"
		else
			@pregunta
		end
	end

	def get_respuestas
		@respuestas
	end

	def get_respuestaCorrecta
		@respuestaCorrecta
	end
	
	def set_pregunta pregunta
		@pregunta = pregunta
	end

	def set_respuestas respuestas
		@respuestas = respuestas
	end
	
	def set_respuestaCorrecta respuestaCorrecta
		@respuestaCorrecta = respuestaCorrecta
	end 



end
