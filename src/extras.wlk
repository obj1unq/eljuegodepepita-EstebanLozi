import wollok.game.*
import pepita.*

object silvestre {
  method image() = "silvestre.png"
  
  method position() {
    const xPresa = pepita.x()
    if (xPresa > 3) {
      return game.at(xPresa, 0)
    } else {
      return game.at(3, 0)
    }
  }
}
object nido {
    method image() = ("nido.png")
    method position() = game.at(8, 6)
}
