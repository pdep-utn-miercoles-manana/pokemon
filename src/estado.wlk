class Estado {
	method multiplicador() = 1

	method revivir(unPokemon) {}
	method curarConfusion(unPokemon) {}
	method entrenarA(unPokemon) {}
}

object normal inherits Estado {
	method puedeRealizar(unPokemon, unaRutina) = true
}

object knockout inherits Estado {
	method puedeRealizar(unPokemon, unaRutina) = false

	override method revivir(unPokemon) {
		unPokemon.normalizate()
	}
}

object confundido inherits Estado {
	method puedeRealizar(unPokemon, unaRutina) = true

	override method multiplicador() = -1

	override method curarConfusion(unPokemon) {
		unPokemon.normalizate()
	}
}

class Infectado inherits Estado {
	var turnos = 5
	method puedeRealizar(unPokemon, unaRutina) = false
	
	override method multiplicador() = 2
	
	override method entrenarA(unPokemon) {
		turnos = turnos -1
		if (turnos == 0) unPokemon.normalizate()
	}
}