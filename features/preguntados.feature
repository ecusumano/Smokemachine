Feature: casos de prueba del juego preguntados

Scenario: entro a la pagina y veo un titulo
	Given voy a la pantalla
	Then veo "Preguntados"

Scenario: inicia el juego y muestra pregunta
	Given voy a la pantalla
	Then veo "Cuantos dedos tiene una mano?"

Scenario: inicia el juego y muestra pregunta
	Given voy a la pantalla
	Then veo "Cinco"

Scenario: elijo una respuesta y confirmo
	Given voy a la pantalla
	When selecciono opcion "Cinco"
	Then veo "Correcta"
