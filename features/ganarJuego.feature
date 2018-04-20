Feature:
Como jugador quiero ver un mensaje para saber que he ganado

Scenario: adivinar palabra
Given inicie un nuevo juego
And seleccione la letra "S"
And seleccione la letra "C"
And seleccione la letra "R"
And seleccione la letra "U"
And seleccione la letra "M"
Then debo ver "Has ganado!!!"