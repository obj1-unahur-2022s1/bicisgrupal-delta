import bicis.*
import accesorios.*

class Deposito{
	var property deposito=[]

	method bicisRapidas()= deposito.filter({b => b.velocidad() > 25})
	method marca()= deposito.map({b=> b.marca()}).asSet().asList()
	method esNocturno()= deposito.all({b=> b.tieneLuz()})
	method tieneBiciParaCarga(kg)= deposito.any({b=>b.carga()> kg})
	method bicisCompanierasDe(unaBici) = deposito.filter({ b =>( b.marca() == unaBici.marca()) and  (b.largo() - unaBici.largo() <=10)	})		
	method cargaTotalBiciLarga()  = deposito.map({ b =>if (b.largo()>170){b.carga()}}).sum()
	method bicisSinAccesrios()= deposito.count({b => b.accesorios().isEmpty()})
	
	// DESAFIOS
	
	method hayCompaneras()= not deposito.any({b=> self.bicisCompanierasDe(b).isEmpty()})
	
	

	method primeraConLuz() = (0..deposito.size()).find ({ idx => deposito.get(idx).tieneLuz() })
	
	method sublista() = deposito.subList(self.primeraConLuz(), deposito.size()-1) 
	
	method seHizoLaLuz()= self.sublista().all({b => b.tieneLuz()})

}
	