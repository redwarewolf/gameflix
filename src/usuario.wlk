import gameflix.*
import Suscripcion.*
import Juego.*

class Usuario {
	var tipoSuscripcion
	var dinero
	var humor
	
	constructor(unTipoSuscripcion,unDinero,unHumor) {
		tipoSuscripcion = unTipoSuscripcion
		dinero = unDinero
		humor = unHumor
	}
	
	method juegosDeGameflix() {
		return gameflix.juegos()
	}
	
	method juegosDeMiSubscripcion(){
		return tipoSuscripcion.juegosSuscripcion()
	}
	
	method cobrarSubscripcion() {
		tipoSuscripcion.cobrarSuscripcion(self)
	}
	
	method jugarJuego(unJuego) {
		if(self.esJuegoPermitido(unJuego)) {
			unJuego.jugar(self)
		} else {
			throw new Exception("No puedo jugar a este juego")
		}
	}	
	
	method esJuegoPermitido(unJuego) {
		return tipoSuscripcion.esJuegoPermitido(unJuego)
	}
	
	method reducirHumor(unaCantidad) {
		humor =- unaCantidad
	}
	
	method comprarCosmeticos(unPrecio) {
		self.pagar(unPrecio)
	}
	
	method cambiarSuscripcion(unaSuscripcion) {
		tipoSuscripcion = unaSuscripcion
	}
	
	method aumentarHumor(horas) {
		humor =+ horas*5
	}
	
	method pagarSuscripcion(costo) {
		if(dinero >= costo) {
			self.pagar(costo)
		} else {
			self.cambiarSuscripcion(suscripcionPrueba)
		}
	}
	
	method pagar(unaCantidad){
		dinero =- unaCantidad
	}
	method actualizarSuscripcion(unaSuscripcion){
		tipoSuscripcion.actualizarSuscripcion(self,unaSuscripcion)
	}
	method puedePagar(unCosto){
		return dinero >= unCosto
	}
	


}