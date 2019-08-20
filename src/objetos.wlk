/* estados del plomo */

object cromado {
	method brilla() {
		return true
	}
	method conduceElectricidad() {
		return true
	}
}

object natural {
	method brilla() {
		return true
	}
	method conduceElectricidad() {
		return false
	}
}

object oxidado {
	method brilla() {
		return false
	}
	method conduceElectricidad() {
		return false
	}
}
/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() { return true } }
object naranja {method esFuerte() { return true}}
object celeste { method esFuerte() { return false } } 
object pardo { method esFuerte() { return false } }


/* materiales */
object vidrio { 
	method brilla() {
		return true
	}
	method conduceElectricidad() {
	return false
	}
}

object lino { 
	method brilla() {
		return false
	}
	method conduceElectricidad() {
		return false
	}
}

object madera { 
	method brilla() {
		return false
	}
	method conduceElectricidad() {
		return false
	}
}

object cuero {
	method brilla() {
		return false
	}
	method conduceElectricidad() {
		return false
	}
}

object cobre { 
	method brilla() {
		return true
	}
	method conduceElectricidad() {
		return true
	}
}

object plomo {
	var _estado = natural
		
	method setEstado(estado) { _estado = estado}
	method conduceElectricidad() {
		return _estado.conduceElectricidad()
	}
	method brilla() {
		return _estado.brilla()
	}
}


/* objetos */

object arito {
	method peso() {return 180}
	method material() {return cobre}
	method color() {return celeste}
}

object banquito {
	var _color = naranja
	
	method peso() {return 1700}
	method material() {return madera}
	method color() {return _color}
	method setColor(color) {_color = color}
}

object cajita {
	var _material
	var _objetoInterior
	
	method peso() {return 400 + _objetoInterior.peso()}
	method material() {return _material}
	method color() {return rojo}
	method setMaterial(material) {_material = material}
	method setObjetoInterior(objeto) {_objetoInterior = objeto}
}

object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }
	method material() { return cuero }
	method peso() { return 1300 }
}

object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object munieco {
	var _peso	
		
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object placa {
	var _color
	var _peso 
	
	method color() { return _color }
	method setColor(color) { _color = color }
	method material() { return cobre }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}





