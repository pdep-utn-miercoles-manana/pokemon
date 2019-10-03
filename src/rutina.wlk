class Rutina {
	method puedeRealizarla(unPokemon) {
		return self.staminaNecesaria() > unPokemon.stamina()
	}
	
	method entrenarA(unPokemon) {
		unPokemon.disminuirStamina(self.stamina())
		self.entrenar(unPokemon)
	}
	
	method stamina()
	method staminaNecesaria()

	method entrenar(unPokemon)
}

object escalar inherits Rutina {
	override method stamina() = 120
	override method staminaNecesaria() = 100
	
	override method entrenar(unPokemon) {
		unPokemon.aumentarInteligencia(5)
	}
}

class Surfear inherits Rutina {
	const property kilometros = 0 

	override method stamina() = 100
	override method staminaNecesaria() = 50

	override method entrenar(unPokemon) {
		unPokemon.aumentarVelocidad(5 * kilometros)
		if (kilometros > 20) {
			unPokemon.knockeate()
			unPokemon.disminuirTernura(2)
		}
	}
}

class Bucear inherits Surfear {
	const property metros
	override method kilometros() = metros / 1000
	
	override method puedeRealizarla(unPokemon) {
		return super(unPokemon) && unPokemon.tieneItem("Snorkel") 
	}
	
}

object hacerCaras inherits Rutina {
	override method stamina() = 10
	override method staminaNecesaria() = 0

	override method entrenar(unPokemon) {
		unPokemon.aumentarTernura(3)
	}
}