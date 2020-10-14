import elementos.*

class Barrio {
	var property elementos =[]
	
	method agregar(elemento) { elementos.add(elemento) }	
	method esCopado() { return elementos.count({ each => each.esBueno() }) > elementos.count({ each => !(each.esBueno()) }) }
}
