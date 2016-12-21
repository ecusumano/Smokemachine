class Pregunta
	def initialize 
		@pregunta = ""
		@respuestas = ""
		@respuestaCorrecta = 0
	end

	def get_pregunta
		@pregunta
	end

	def get_respuestas
		@respuestas
	end

	def get _respuestaCorrecta
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
