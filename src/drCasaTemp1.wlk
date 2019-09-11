 class Persona {
 	var enfermedades = #{}
 	var temperatura = 36
 	var cantidadCelulas
 	
 	method contraerEnfermedad(unaEnfermedad){
 		enfermedades.add(unaEnfermedad)
 	}
 	
 	method tiene(unaEnfermedad){
 		return enfermedades.contains(unaEnfermedad)
 	}
 	
 	method vivirUnDia(){
 		enfermedades.forEach{enfermedad => enfermedad.aplicarEfecto(self)}
 	}
 	method aumentarTemperatura(unosGrados) {
 		temperatura = 45.min(temperatura + unosGrados)
 	}
 	method destruirCelulas(cantidadCelulasADestruir) {
 		cantidadCelulas -= cantidadCelulasADestruir
 	}
 }
 
 
 class EnfermedadInfecciosa {
 	var property cantidadDeCelulasAmenazadas
 	//punto 2
 	method reproducirse(){
 		 cantidadDeCelulasAmenazadas *= 2
 	}
 	
 	method aplicarEfecto(unaPersona) {
 		unaPersona.aumentarTemperatura(cantidadDeCelulasAmenazadas / 1000)
 	}
 }
 
 class EnfermedadAutoinmune {
 	var property cantidadDeCelulasAmenazadas
 	 //SE REEMPLAZA EL SETTER Y EL GETTER CON PROPERTY
 	 
 	 method aplicarEfecto(unaPersona) {
 	 	unaPersona.destruirCelulas(cantidadDeCelulasAmenazadas)
 	 	
 	 }
 }