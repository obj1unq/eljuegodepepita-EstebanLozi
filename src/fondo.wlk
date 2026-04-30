import wollok.game.*
import pepita.*
import direccion.*
object fondo {
  const height = 10
  const width = 10
  
  method height() = height
  
  method width() = width
  
  method init() {
    game.height(height)
    game.width(width)
    game.boardGround("fondo2.jpg")
  }
  
  method dentroDeBordes(personaje) = (((personaje.x() > 0) || 
                            (personaje.x() < (width - 1))) || 
                            (personaje.y() > 0))           || 
                            (personaje.y() < (height - 1))
  
  method noHayMuroEn(x, y) = (((not (game.at(x,y) == muro1.position())) && 
                              (not (game.at(x,y) == muro2.position()))) && 
                              (not (game.at(x,y) == muro3.position()))) && 
                              (not (game.at(x, y) == muro4.position()))
  
  method noHayMuroALaIzq(personaje) = self.noHayMuroEn(personaje.x() - 1, personaje.y())
  method noHayMuroALaDer(personaje) = self.noHayMuroEn(personaje.x() + 1, personaje.y())
  method noHayMuroArriba(personaje) = self.noHayMuroEn(personaje.x(), personaje.y() + 1)
  method noHayMuroAbajo (personaje) = self.noHayMuroEn(personaje.x(), personaje.y() - 1)
  
}

object muro1 {
  method image() = "muro.png"
  
  method position() = game.at(3, 5)
}

object muro2 {
  method image() = "muro.png"
  
  method position() = game.at(2, 8)
}

object muro3 {
  method image() = "muro.png"
  
  method position() = game.at(5, 4)
}

object muro4 {
  method image() = "muro.png"
  
  method position() = game.at(6, 7)
}