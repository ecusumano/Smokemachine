require_relative "../lib/partida.rb"

describe "ver preguntas" do

	it "muestra una pregunta" do
		partida = Partida.new
		partida.muestraPregunta(1).should == "¿Cuantos dedos tiene una mano?"
		
	end

	it "muestra las respuestas de una pregunta" do
		partida = Partida.new
		partida.muestraRespuestas(1).should == ["Cuatro", "Cinco"]
	end

	it "muestra la segunda pregunta" do
		partida = Partida.new
		partida.muestraPregunta(2).should == "¿De que color es el cielo?"
	end 

	it "obtiene respuesta correcta de la segunda pregunta" do
		partida = Partida.new
		partida.muestraRespuestaCorrecta(2).should == "Celeste"
	end 
end
