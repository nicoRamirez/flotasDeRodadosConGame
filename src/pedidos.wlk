
class Pedidos{
	var property distARecorrer=0
	var property timeMax=0
	var property cantPasajeros=0
	var property colorIncomp=[]
	method velocidadRequerida(){
		return (distARecorrer / timeMax)
	}
	method loPuedeSatisfacer(auto){
		return ((auto.velocidadMaxima() - self.velocidadRequerida()).abs())>=10 and
		auto.capacidad() >= self.cantPasajeros() and 
		not colorIncomp.contains(auto.color())
	}
}
