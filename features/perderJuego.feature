Feature:
Como jugador quiero ver un mensaje para saber que he perdido al intentar 6 veces

Scenario: adivinar palabra
Given inicie un nuevo juego
And seleccione la letra "A"
And seleccione la letra "Z"
And seleccione la letra "T"
And seleccione la letra "X"
And seleccione la letra "V"
And seleccione la letra "B"
Then debo ver "Has perdido!!!"