Feature:
Como jugador quiere acceder al juego HangScrum

Scenario: debe tener el titulo "Bienvenido a HangScrum, aqui podras poner a prueba tu conocimiento en Scrum"
Given  que abri el juego
Then debo ver "Bienvenido a HangScrum, aqui podras poner a prueba tu conocimiento en Scrum"

Scenario: Al iniciar el juego debo visualizar el tablero de letras del abecedario
Given inicie un nuevo juego
Then debo ver "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"

