import wollok.game.*
class ChevroletCorsa {
	var pintura
	var property position
	var property todoLasPosition=[]
	
	method moveteDerecha(){
		self.position(self.position().right(1))
	}
	
	method moveteIzquierda(){
		self.position(self.position().left(1))
	}
	
	method moveteArriba(){
		self.position(self.position().up(1))
	}
	
	method moveteAbajo(){
		self.position(self.position().down(1))
	}
	method pasopor(posicion){
		return todoLasPosition.any({posit=>posit==posicion})
	}
	method pasoPorFila(numero){
		return todoLasPosition.any({posicion=>posicion==(numero)})
	}
	
	method pintura(){
		return  pintura
	}
	method ponerPintura(colorOriginal){
		pintura= colorOriginal
	}
	method capacidad(){
		return 4
	}
	method velocidadMaxima(){
		return 150
	}
	method peso(){
		return 1300
	}
	method color(){
		return self.pintura()
	}
	

}
class AutosEspeciales{
	var capacidadTotal =0
	var velocidad =0
	var pesoTotal =0
	var pintura
	method pintura(){
		return  pintura
	}
	method ponerPintura(colorOriginal){
		pintura= colorOriginal
	}
	method color(){
		return self.pintura()
	}
	method velocidad(){
		return velocidad
	}
	method ingresarVelocidad(max){
		velocidad=max
	}
	method velocidadMaxima(){
		return self.velocidad()
	}
	method capacidadTotal(){
		return capacidadTotal
	}
	method ingresaCapacidad(cant){
		capacidadTotal=cant
	}
	method capacidad(){
		return self.capacidadTotal()
	}
	method pesoTotal(){
		return pesoTotal
	}
	method ingresarPeso(cant){
		pesoTotal= cant
	}
	method peso(){
		return self.pesoTotal()
	}
}
class RenaultKwid{
	var tieneGas=sinGas
	
	method pintura(){
		return  "azul"
	}
	method tieneGas(){
		return tieneGas
	}
	method ponerGas(){
		tieneGas=conGas
	}
	method sacarGas(){
		tieneGas=sinGas
	}
	method capacidad(){
		return if (tieneGas.gasInstalado()){3}else{4}
	}
	method velocidadMaxima(){
		return if (tieneGas.gasInstalado()){120}else{110}
	}
	method peso(){
		return if (tieneGas.gasInstalado()){1350}else{1200}
	}
	method color(){
		return self.pintura()
	}
}
object conGas{
	method gasInstalado(){
		return true
	}
}
object sinGas{
	method gasInstalado(){
		return false
	}
}