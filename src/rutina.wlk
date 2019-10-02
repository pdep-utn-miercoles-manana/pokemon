class Rutina {
	method puedeRealizarla(unPokemon) {
		return self.staminaNecesaria() > unPokemon.stamina()
	}

	method staminaNecesaria()
}

class Escalar inherits Rutina {
	override method staminaNecesaria() = 100
}

class Surfear inherits Rutina {
	override method staminaNecesaria() = 50
}

class Bucear inherits Rutina {
	override method staminaNecesaria() = 100
}

class HacerCaras inherits Rutina {
	override method staminaNecesaria() = 0
}