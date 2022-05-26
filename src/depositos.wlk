import bicis.*
import accesorios.*

class Deposito{
	var property deposito=[]

	method bicisRapidas()= deposito.filter({b => b.velocidad() > 25})
	method marca()= deposito.map({b=> b.marca()}).asSet().asList()
	method esNocturno()= deposito.all({b=> b.tieneLuz()})
	method tieneBiciParaCarga(kg)= deposito.any({b=>b.carga()> kg})
	
	method bicisCompanierasDe(unaBici) = deposito.filter({ b =>( b.marca() ==unaBici.marca())  
										and  (b.largo() - unaBici.largo() <=10)	})
	
	method cargaTotalBiciLarga() = deposito.filter ( { b => b.largo()> 170 } ).carga().sum()
	method marcaBiciMasRapida() = deposito.max( { b=> b.velocidad() } ).marca()
} 