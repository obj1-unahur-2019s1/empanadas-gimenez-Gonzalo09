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
	method cobrarSueldo() {
		if(totalDeuda > 0) {
			var cuantoCancelar = self.sueldo().min(totalDeuda)
			
		}
	}
	method sueldo() { return sueldo }
	method sueldo(nuevoSueldo) { sueldo = nuevoSueldo }
	method gastar(cuanto) {return totalDinero - cuanto}
	method totalDeuda() {return totalDinero - totalDeuda}
	method totalDinero() {return sueldo - totalDeuda}
	
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
