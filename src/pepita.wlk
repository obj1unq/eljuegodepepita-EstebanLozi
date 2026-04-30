import wollok.game.*
import direccion.*
import comidas.*
import extras.*
import fondo.*

object pepita {
	var property energia = 100
	var position = game.at(3, 2)
	
	method init() {
		self.image()
        self.position(3,3)
        energia = 100
	}
	
	method x() = position.x()
	
	method y() = position.y()
	
	method position() = position
	
	method position(x, y) {
		position = game.at(x, y)
	}
	
	method image() = 
      if (self.position() == silvestre.position() || energia <= 0) {
    	return "pepita-gris.png"
      } else {
    	return "pepita.png"
    }
	
	method text() = "\n\n\n\n" + self.energia()
	
	method comer(comida) {
		energia += comida.energiaQueOtorga()
		game.removeVisual(comida)
	}
	method volar(kms) {
		energia -= 9 * kms
	}
	method gravedad() {
      if (self.y() > 0 && fondo.noHayMuroAbajo(self)) {
        position = position.down(1)
    }
  }
}