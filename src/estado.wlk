class Estado {
	method multiplicador() = 1

	method revivir(unPokemon) {}
	method curarConfusion(unPokemon) {}
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
	method puedeRealizar(unPokemon, unaRutina) = false
}