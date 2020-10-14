import plagas.*

class Hogar {
	var property nvlMugre
	var property confortQueOfrece
	
	method sufrirAtaque(plaga) {
		nvlMugre += plaga.nvlDanio()
		plaga.sufrirAtaque()
	}
	method esBueno() { return nvlMugre.max(confortQueOfrece) == confortQueOfrece  } // otra solucion: "nvlMugre < confortQueOfrece" pero quise cambiar
}

class Huerta {
	var property produccion
	method sufrirAtaque(plaga) { 
		produccion -= plaga.nvlDanio() * 0.1
		if(plaga.transmiteEnfermedad()){
			produccion -= 10
		}
		plaga.sufrirAtaque()
	}
	method esBueno() { return produccion > 100}
}

class Mascota {
	var property nvlSalud
	method sufrirAtaque(plaga) { if(plaga.transmiteEnfermedad()) {
		nvlSalud -= plaga.nvlDanio()
		plaga.sufrirAtaque()
	}
		
	}
	method esBueno() { return nvlSalud > 250 }
}


