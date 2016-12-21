require_relative "../lib/partida.rb"

describe "ver preguntas" do

	it "saluda al jugador" do
		"hola jugador"
	end

	it "muestra la primera pregunta" do
		partida = Partida.new
		partida.muestraPregunta == "¿Cuantos dedos tiene una mano?"
		
	end

	it "muestra las respuestas de una pregunta" do
		partida = Partida.new
		partida.muestraRespuestas == ["Cuatro", "Cinco"]
	end
end
