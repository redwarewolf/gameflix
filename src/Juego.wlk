import Suscripcion.*

class Juego {
	var nombre
	var categoria
	var precio
	
	constructor(unNombre,unaCategoria,unPrecio){
		nombre = unNombre
		categoria = unaCategoria
		precio = unPrecio
	}
	
	//------------L�gica compartida entre todos los juegos---------//
	method esJuegoBarato(){
		return self.precioMenorA(30)
	}
	method precioMenorA(unPrecio){
		return precio <= unPrecio
	}
	method seLlama(unNombre){
		return nombre == unNombre
	}
	method esCategoria(unaCategoria){
		return categoria == unaCategoria
	}
	//------------L�gica compartida entre todos los juegos---------//

}

class Violento inherits Juego{
	method jugar(usuario,horas){
		usuario.reducirHumor(10)
	}
}

class MOBA inherits Juego{
	method jugar(usuario,horas){
		usuario.comprarCosmeticos(30)
	}
}
 class Terrofifico inherits Juego{
 	method jugar(usuario,horas){
 		usuario.cambiarSuscripcion(suscripcionPrueba)
 	}
 }
 class Estrategico inherits Juego{
 	method jugar(usuario,horas){
 		usuario.aumentarHumor(horas)
 	}
 }

