class Pirata {
	
	const property items = []
	
	var invitante
	var nivelEbriedad
	var cantidadMonedas = 0
	
	method invitante() = invitante
	method nivelEbriedad() = nivelEbriedad
	method cantidadMonedas() = cantidadMonedas
	
	method tiene(unItem) {
		return items.contains(unItem)
	}

	method pasadoDeGrog() {
		return nivelEbriedad >= 90
	}

	method tomarGrog() {
		nivelEbriedad += 5
		cantidadMonedas--
	}
	
	method podesSaquear(unaVictima) {
		return unaVictima.sosSaqueablePor(self)
	}
	
	method cantidadInvitadosPara(unBarco) {
		return unBarco.cantidadInvitadosPor(self)
	}
	
	method fuisteInvitadoPor(unTripulante) { 
		return invitante.equals(unTripulante)
	}
}

class PirataEspiaDeLaCorona inherits Pirata {
	override method pasadoDeGrog() {
		return false
	}

	override method podesSaquear(unaVictima) {
		return super(unaVictima) && self.tiene('permiso de la corona')
	}	
}