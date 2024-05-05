object registroProduccion {
	const cantidadPiezas = [43,18,49,62,33,39]
	
	method agregarRegistros(numero){ cantidadPiezas.add(numero)}
	method listaDeProduccion() = cantidadPiezas
	
	method algunDiaSeProdujo(cantidad){
		return cantidadPiezas.contains(cantidad)
	}
	method maximoValorDeProduccion(){
		return cantidadPiezas.max()
	}
	method valoresDeProduccionPares(){
		return cantidadPiezas.filter({ pares => pares.even()})
	}
	method produccionEsAcotada(n1,n2){
		return cantidadPiezas.all({cantidad =>cantidad.between(n1,n2)})
		}
	
	method produccionesSuperioresA(cuanto){
		return cantidadPiezas.filter({ v => v>cuanto})
	}
	method produccionesSumando(n){
		return cantidadPiezas.map ({ nuevo => nuevo + n })
	}
	method totalProducido(){
		return cantidadPiezas.sum()
	}
	method ultimoValorDeProduccion(){
		return cantidadPiezas.last()
	}
	method primerValorDeProduccion(){
		return cantidadPiezas.first()
	}
	method cantidadProduccionesMayorALaPrimera(){
		return cantidadPiezas.filter ({c => c > self.primerValorDeProduccion() })
	}
}