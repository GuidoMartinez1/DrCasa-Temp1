 class Persona {
 	var enfermedades = #{}
 	
 	method contraerEnfermedad(unaEnfermedad){
 		enfermedades.add(unaEnfermedad)
 	}
 	
 	
 }
 
 
 
 
 
 
 
 
 
 
 
 class EnfermedadInfecciosa {
 	var temperatura
 	var celulasAmenazadas
 	
 	method aumentaTemperatura(){
 		return temperatura + (celulasAmenazadas/1000)
 	}
 	
 }
 
 class EnfermedadAutoinmune {
 	
 }