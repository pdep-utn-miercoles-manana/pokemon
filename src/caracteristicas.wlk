class CaracteristicasFundamentales {
	
	var ternura
	var velocidad
	var inteligencia
	
	/** Getters **/
	
	method ternura() = ternura
	method velocidad() = velocidad
	method inteligencia() = inteligencia
	
	/** Comportamiento **/
	
	method estaMaximizado() = self.sumatoria() == 510
	
	method sumatoria() = ternura + velocidad + inteligencia
	
}