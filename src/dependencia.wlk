class Dependencia{
	const rodadoObtenido=[]
	var empleados=0
	var property pedidos=[]
	method sacarPedido(pedido){
		pedidos.remove(pedido)
	}
	method totalDeEmpleadosEnPedidos(){
		return pedidos.sum({pedido=>pedido.cantPasajeros()})
	}
	method pedidosNoSatisfechos(){
		return pedidos.filter({pedido=> not self.pedidoSatisfecho(pedido)})
	}
	method pedidoSatisfecho(pedido){
		return rodadosObtenido.any({rodado=>pedido.loPuedeSatisfacer(rodado)})
	}
	method empleados(){
		return empleados
	}
	method sumarEmpleados(cant){
		empleados=empleados + cant
	}
	method rodadoObtenido(){
		return rodadoObtenido
	}
	method agregarAFlota(rodado){
		rodadoObtenido.add(rodado)
	}
	method quitarDeFlota(rodado){
		rodadoObtenido.remove(rodado)
	}
	method pesoTotalFlota(){
		return  rodadoObtenido.sum({auto=>auto.peso()})
	}
	method estaBienEquipada(){
		return rodadoObtenido.size()>=3 and rodadoObtenido.all({auto=>auto.velocidadMaxima()>=100})
	}
	method capacidadTotalEnColor(color){
		return  rodadoObtenido.filter({auto=>auto.color()==color}).sum({auto=>auto.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return rodadoObtenido.max({auto=>auto.velocidadMaxima()}).color()
	}
	method capacidadFaltante(){
		return (empleados - rodadoObtenido.sum({auto=>auto.capacidad()})).max(0)
	}
	method esGrande(){
		return empleados >=40 and rodadoObtenido.size() >= 5
	}
}

