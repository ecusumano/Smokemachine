require_relative "../lib/partida.rb"

describe "ver preguntas" do

	it "muestra una pregunta" do
		partida = Partida.new
		partida.muestraPregunta().should == "¿Cuantos dedos tiene una mano?"
		
	end

	it "muestra las respuestas de una pregunta" do
		partida = Partida.new
		partida.muestraPregunta()
		partida.muestraRespuestas().should == ["Cuatro", "Cinco"]
	end

	it "obtiene respuesta correcta de la primera pregunta" do
		partida = Partida.new
		partida.muestraPregunta()
		partida.muestraRespuestaCorrecta().should == "Cinco"
	end 

	it "muestra la segunda pregunta" do
		partida = Partida.new
		partida.muestraPregunta()
		partida.muestraPregunta().should == "¿De que color es el cielo?"
	end 

	it "obtiene respuesta correcta de la segunda pregunta" do
		partida = Partida.new
		partida.muestraPregunta()
		partida.muestraPregunta()
		partida.muestraRespuestaCorrecta().should == "Celeste"
	end 

	it "no obtiene preguntas" do
		partida = Partida.new
		partida.set_ultima_pregunta
		partida.muestraPregunta().should == "Fin del juego"
	end 
	it "obtiene la cuarta imagen" do
		partida = Partida.new
		partida.obtieneImagen.should == "boca"
	end 
end
