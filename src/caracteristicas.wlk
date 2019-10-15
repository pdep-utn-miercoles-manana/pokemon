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
		ternura = self.maximoPara(ternura, unaCantidad)
	}		
	method aumentarVelocidad(unaCantidad) {
		velocidad = self.maximoPara(velocidad, unaCantidad)
	}	
	method aumentarInteligencia(unaCantidad) {
		inteligencia = self.maximoPara(inteligencia, unaCantidad)
	}

	method disminuirTernura(unaCantidad) {
		ternura = self.minimoPara(ternura, unaCantidad)
	}
	method disminuirVelocidad(unaCantidad) {
		velocidad = self.minimoPara(velocidad, unaCantidad)
	}	
	method disminuirInteligencia(unaCantidad) {
		inteligencia = self.minimoPara(inteligencia, unaCantidad)
	}
	
	method maximoPara(atributo, unaCantidad) {
		return 255.min(atributo + unaCantidad.min(maximo - self.sumatoria()))
	}
	method minimoPara(atributo, unaCantidad) {
		return 0.min(atributo - unaCantidad)
	}

}