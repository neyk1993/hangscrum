Feature:
Como jugador quiere seleccionar letra para descubrir palabra oculta

Scenario: Al seleccionar una letra
Given inicie un nuevo juego
And seleccione la letra "S"
Then debo ver "S----"