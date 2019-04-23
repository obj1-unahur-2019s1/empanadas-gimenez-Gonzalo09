object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}

object galvan {
	var sueldo = 15000
	var totalDeuda = 0
	var totalDinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoSueldo) { sueldo = nuevoSueldo }
	method cobrarSueldo() {
		if(totalDeuda > 0) {
			var cuantoCancelar = self.sueldo().min(totalDeuda)
			var cuantoGuardar = self.sueldo() - cuantoCancelar
			totalDeuda = totalDeuda - cuantoCancelar
			totalDinero = totalDinero + cuantoGuardar
		} else {
			totalDinero = totalDinero + self.sueldo()
		}
	}
	
	method gastar(cuanto) {
		if (cuanto < totalDinero){
			totalDinero = totalDinero - cuanto
		}else {
			totalDeuda = totalDeuda + (cuanto - totalDinero)
			totalDinero = 0
		}
	}
	method totalDeuda() {return totalDeuda}
	method totalDinero() {return totalDinero}
	
	}
	

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var precioPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}	
	method sueldo() = cantidadEmpanadasVendidas * precioPorEmpanada

	method cobrarSueldo() {totalCobrado = totalCobrado + self.sueldo() }
	
	method totalCobrado() { return totalCobrado }
}
