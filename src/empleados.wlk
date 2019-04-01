object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var sueldo = 15000
	var saldo = 0

	method sueldo() {
		return sueldo
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		saldo += sueldo
	}

	method gastar(cuanto) {
		saldo -= cuanto
	}

	method totalDeuda() {
		if (saldo < 0) return saldo.abs()
		return 0
	}

	method totalDinero() {
		if (saldo >= 0) return saldo
		return 0
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

