class Plaga {
	var property poblacion
	method transmiteEnfermedad() { return poblacion > 10 }
	method nvlDanio() { return poblacion }
	method sufrirAtaque() { poblacion += poblacion*0.1 }
}

class Mosquito inherits Plaga {
	override method transmiteEnfermedad() { return super() and poblacion % 3 == 0 }
}

class Pulga inherits Plaga {
	override method nvlDanio() { return super() * 2 }
}

class Cucaracha inherits Plaga {
	var property peso
	
	override method sufrirAtaque() {
		super()
		peso += 2
	}
	override method nvlDanio() { return super() / 2 }
	override method transmiteEnfermedad() { return super() and peso >= 10 }
}

class Garrapata inherits Plaga {
	override method nvlDanio() { return super() * 2 }
	override method sufrirAtaque() {
		poblacion += poblacion * 0.2
	}
}