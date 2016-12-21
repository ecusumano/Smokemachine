require_relative "../lib/partida.rb"

describe "ver preguntas" do

	it "saluda al jugador" do
		"hola jugador"
	end

	it "muestra una pregunta" do
		partida = Partida.new
		partida.muestraPregunta(1) == "¿Cuantos dedos tiene una mano?"
		
	end

	it "muestra las respuestas de una pregunta" do
		partida = Partida.new
		partida.muestraRespuestas(1) == ["Cuatro", "Cinco"]
	end

	it "muestra la segunda pregunta" do
		partida = Partida.new
		partida.muestraPregunta(2) == "¿De que color es el cielo?"
	end 

	#it "obtiene respuesta correcta de segunda pregunta" do
	##	partida = Partida.new
	#	partida.muestraRespuestaCorrecta = 2
	#end 
end
