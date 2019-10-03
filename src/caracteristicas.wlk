class CaracteristicasFundamentales {

	const maximo = 50

	var ternura
	var velocidad
	var inteligencia

	/** Getters **/

	method ternura() = ternura
	method velocidad() = velocidad
	method inteligencia() = inteligencia

	/** Comportamiento **/

	method estaMaximizado() = self.sumatoria() == maximo

	method sumatoria() = ternura + velocidad + inteligencia

	method aumentarTernura(unaCantidad) {
		ternura = 255.min(ternura + unaCantidad.min(maximo - self.sumatoria()))
	}		
	method aumentarVelocidad(unaCantidad) {
		velocidad = 255.min(velocidad + unaCantidad.min(maximo - self.sumatoria()))
	}	
	method aumentarInteligencia(unaCantidad) {
		inteligencia = 255.min(inteligencia + unaCantidad.min(maximo - self.sumatoria()))
	}

	method disminuirTernura(unaCantidad) {
		ternura = 0.max(ternura - unaCantidad)
	}
	method disminuirVelocidad(unaCantidad) {
		velocidad = 0.max(velocidad - unaCantidad)
	}	
	method disminuirInteligencia(unaCantidad) {
		inteligencia = 0.max(inteligencia - unaCantidad)
	}

}