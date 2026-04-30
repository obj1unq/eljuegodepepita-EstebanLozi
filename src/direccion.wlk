import pepita.*
import fondo.*
import wollok.game.*

object direccion {
  method move(personaje) {
    if (fondo.dentroDeBordes(personaje) && (personaje.energia() > 9)) {
      keyboard.w().onPressDo({ arriba.mover(personaje) })
      keyboard.s().onPressDo({ abajio.mover(personaje) })
      keyboard.d().onPressDo({ der.mover(personaje) })
      keyboard.a().onPressDo({ izq.mover(personaje) })
    } else {
      game.say(pepita, "Toy muelta")
    }
  }
}

object arriba {
  method mover(personaje) {
    if (fondo.dentroDeBordes(personaje) && fondo.noHayMuroArriba(personaje) && (personaje.energia() > 9)) {
      personaje.position(personaje.x(), personaje.y() + 1)
      personaje.volar(1)
    } else {
      personaje.volar(0)
    }
  }
}

object der {
  method mover(personaje) {
    if (fondo.dentroDeBordes(personaje) && fondo.noHayMuroALaDer(personaje) && (personaje.energia() > 9)) {
      personaje.position(personaje.x() + 1, personaje.y())
      personaje.volar(1)
    } else {
      personaje.volar(0)
    }
  }
}

object abajio {
  method mover(personaje) {
    if (fondo.dentroDeBordes(personaje) && fondo.noHayMuroAbajo(personaje) && (personaje.energia() > 9)) {
      personaje.position(personaje.x(), personaje.y() - 1)
      personaje.volar(1)
    } else {
      personaje.volar(0)
    }
  }
}

object izq {
  method mover(personaje) {
    if (fondo.dentroDeBordes(personaje) && fondo.noHayMuroALaIzq(personaje) && (personaje.energia() > 9)){
      personaje.position(personaje.x() - 1, personaje.y())
      personaje.volar(1)
    } else {
      personaje.volar(0)
    }
  }
}



