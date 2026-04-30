import pepita.*
import comidas.*
import extras.*
import wollok.game.*
import direccion.*
import fondo.*
object level1 {
    method init() {
        pepita.init()
        game.clear()

        direccion.move(pepita)
        keyboard.x().onPressDo({ self.init() })
        game.onCollideDo(manzana,   {pj => pj.comer(manzana) })
        game.onCollideDo(silvestre, {pj => game.say(pj, "¡He modido! X.X") pj.energia(0) game.onTick(2000, "mori", {self.init() })})
        game.onCollideDo(nido,      {pj => game.say(pj, "¡GANE! B)")  pj.energia(pj.energia()) game.onTick(2000, "gane", {self.init() })})
        game.onTick(1200, "gravedad", {pepita.gravedad()}) //Se me hizo poco 800
        game.addVisual(silvestre)
        game.addVisual(pepita)
        game.addVisual(manzana)
        game.addVisual(nido)
        game.addVisual(muro1)
        game.addVisual(muro2)
        game.addVisual(muro3)
        game.addVisual(muro4)
    }
}