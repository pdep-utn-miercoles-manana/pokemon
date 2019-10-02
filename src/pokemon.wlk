class Pokemon {
	
	var estado
	
	/** Getters **/
	
	method estado() = estado
	
	/** Punto 1 **/
	
	method puedeRealizar(unaRutina) {
		return unaRutina.puedeRealizarla(self) && estado.puedeRealizar(self, unaRutina)
	}
	
}