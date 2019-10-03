class Estado {
	method multiplicador() = 1
}

object normal inherits Estado {
	method puedeRealizar(unPokemon, unaRutina) = true
}

object knockout inherits Estado {
	method puedeRealizar(unPokemon, unaRutina) = false
}

object confundido inherits Estado {
	method puedeRealizar(unPokemon, unaRutina) = true

	override method multiplicador() = -1
}

object infectado inherits Estado {
	method puedeRealizar(unPokemon, unaRutina) = false
}