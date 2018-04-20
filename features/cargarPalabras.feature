#features/verEspaciosPalabraOculta.feature
Feature:
	como jugador 
	Quiero ver los espacios de la palabra oculta
	Para saber la cantidad de caracteres

Scenario: debe mostrar lineas de la palabra oculta "
	Given inicie un nuevo juego
	Then debo ver "-----"
#debo ponder ver todos los espacios a digitar de la palabra oculta