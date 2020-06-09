object trafic{
	var interior= interiorComodo
	var motor=motorPulenta
	method pintura(){
		return  "blanco"
	}
	method interior(){
		return interior
	}
	method cambiarInterior(nuevoInterior){
		interior= nuevoInterior
	}
	method motor(){
		return motor
	}
	method cambiarMotor(nuevoMotor){
		motor=nuevoMotor
	}
	
	method capacidad(){
		return interior.capacidadInterior()
	}
	method velocidadMaxima(){
		return motor.veloMaxMotor()
	}
	method peso(){
		return 4000 + motor.pesoMotor() + interior.pesoInterior()
		}
	method color(){
		return self.pintura()
	}
	
}
object interiorComodo{
	method capacidadInterior(){
		return 5
	}
	method pesoInterior(){
		return 700
	}
}
object interiorPopular{
	method capacidadInterior(){
		return 12
	}
	method pesoInterior(){
		return 1000
	}
}
object motorPulenta{
	method pesoMotor(){
		return 800
	}
	method veloMaxMotor(){
		return 130
	}
}
object motorBaraton{
	method pesoMotor(){
		return 500
	}
	method veloMaxMotor(){
		return 80
	}
}