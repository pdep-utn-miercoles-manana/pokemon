class Pokemon {
	
	var estado
	var especie
	var caracteristicas
	
	/** Getters **/
	
	method estado() = estado
	method caracteristicas() = caracteristicas
	
	/** Punto 1 **/
	
	method puedeRealizar(unaRutina) {
		return unaRutina.puedeRealizarla(self) && estado.puedeRealizar(self, unaRutina)
	}
	
	/** Punto 2 **/

	method ternura() = caracteristicas.ternura() + especie.ternura()
	method velocidad() = caracteristicas.velocidad() + especie.velocidad()
	method inteligencia() = caracteristicas.inteligencia() + especie.inteligencia()

	/** Punto 3 **/
	
	method estaMaximizado() = caracteristicas.estaMaximizado()
	
}