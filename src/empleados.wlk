object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var sueldo = 15000
	var saldo = 0
	var positivo = true

	method sueldo() {
		return sueldo
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		saldo += sueldo
		self.pagarCuentas()
	}

	method pagarCuentas() {
	// /completar aca
	}

	method gastar(cuanto) {
	// completar aca
	}

	method totalDeuda() {
	// /completar aca
	}

	method totalDinero() {
	// /completar aca
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		cantidadEmpanadasVendidas = 0
	}

	method totalCobrado() {
		return totalCobrado
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

