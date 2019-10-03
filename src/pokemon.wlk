import estado.*
import excepciones.*

class Pokemon {

	const property nickname
		
	var estado = normal
	var equipo
	var especie
	var stamina
	var caracteristicas
	
	/** Getters **/
	
	method estado() = estado
	method equipo() = equipo
	method stamina() = stamina
	method especie() = especie
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

	/** Punto 4 **/

	method realizar(unaRutina) {
		self.validarRealizacion(unaRutina)
		unaRutina.entrenar(self)
	}

	method validarRealizacion(unaRutina) {
		if (self.puedeRealizar(unaRutina).negate()) {
			throw new RutinaException(message = "No puede hacer la rutina")
		}
	}
	
	method knockeate() {
		estado = knockout
	}
	
	method tiene(unItem) = unItem.equals(equipo)
	
	method aumentarTernura(unaCantidad) {
		caracteristicas.aumentarTernura(estado.multiplicador() * unaCantidad)
	}
	method aumentarVelocidad(unaCantidad) {
		caracteristicas.aumentarVelocidad(estado.multiplicador() * unaCantidad)
	}
	method aumentarInteligencia(unaCantidad) {
		caracteristicas.aumentarInteligencia(estado.multiplicador() * unaCantidad)
	}

	method disminuirTernura(unaCantidad) {
		caracteristicas.disminuirTernura(estado.multiplicador() * unaCantidad)
	}
	method disminuirVelocidad(unaCantidad) {
		caracteristicas.disminuirVelocidad(estado.multiplicador() * unaCantidad)
	}
	method disminuirInteligencia(unaCantidad) {
		caracteristicas.disminuirInteligencia(estado.multiplicador() * unaCantidad)
	}

}