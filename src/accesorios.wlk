/* Para agregar más accesorios se deben de crear más obejtos, y estos deben de tener métodos
 * polimorficos a los demás accesorios.
 */


object farolito{
	method peso()= 0.5 
	method carga()= 0
	method esLuminoso()= true
}

class Canasto{
	var property volumen
	method peso()= volumen / 10
	method carga()= volumen * 2
	method esLuminoso()= false
}

class Morral{
	var property largo
	var property ojoDeGato
	method peso()= 1.2
	method carga()= largo/3
	method esLuminoso()= ojoDeGato
} 
