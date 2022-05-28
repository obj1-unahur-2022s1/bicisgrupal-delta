import depositos.*

class Bicicleta{
	var property rodado
	var property largo
	var property marca
	var property accesorios = []

	method altura()= rodado * 2.5 + 15
	method velocidad()= if (largo > 120){rodado + 6}else{rodado + 2}
	method carga()= accesorios.sum({a => a.carga()})
	method peso()= accesorios.sum({a => a.peso() }) + rodado / 2
	method tieneLuz()= accesorios.any({a => a.esLuminoso()})
	method accesriosLivianos()= accesorios.count({a => a.peso()< 1})
}