Feature: casos de prueba del juego preguntados

Scenario: entro a la pagina principal y veo un titulo
	Given voy a la pantalla principal
	Then veo "Preguntados"

Scenario: inicia el juego y muestra pregunta
	Given voy a la pantalla principal
	And inicio el juego
	Then veo "Cuantos dedos tiene una mano?"

Scenario: inicia el juego y muestra respuestas
	Given voy a la pantalla principal
	And inicio el juego
	Then veo "Cinco"

Scenario: elijo una respuesta y confirmo
	Given voy a la pantalla principal
	And inicio el juego
  When selecciono "Cinco"
	Then veo "Correcta"

Scenario: elijo una respuesta y confirmo
	Given voy a la pantalla principal
	And inicio el juego
  When selecciono "Cinco"
	Then veo "Correcta"
	And veo "10"







