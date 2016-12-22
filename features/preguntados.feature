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

Scenario: finaliza el juego 
	Given voy a la pantalla principal
	And inicio el juego
  When selecciono "Cinco"
  And continuo
	And selecciono "Celeste"
  And continuo
	And selecciono "Felino"
  And continuo
	And selecciono "Azul y Amarillo"
  And continuo
	And selecciono "Japón"
  And continuo
	And selecciono "Bolivia"
  And continuo
	And selecciono "Cuatro"
	And continuo
	And selecciono "15"
	Then veo "Felicitaciones"




