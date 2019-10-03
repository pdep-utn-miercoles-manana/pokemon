class Especie {
	const property pokedex
	const property ternura
	const property velocidad
	const property inteligencia
	const property evolucion
	method evolucionar() = evolucion
}

class EspecieSinEvolucion inherits Especie {
	override method evolucionar() = self
}

object pikachu inherits EspecieSinEvolucion(
	pokedex = 25,
	ternura = 20,
	velocidad = 20, 
	inteligencia = 20
) {}