import wollok.game.*
import juego.*
import mira.*
import aves.*


object puntaje {
    const property position = game.at(0, 0)
    const property image = "score xd.png"
}
object score {
    var property position = game.at(0, 0)
    var property puntos = 0
    var property image = puntos.toString() + ".png"

    method actualizarPuntaje(puntosGanados) {
        if (puntos < 10) {puntos = puntos + puntosGanados
        image = puntos.toString() + ".png"
        game.removeVisual(self)
        game.addVisual(self)
    } else {
      game.addVisual(win)
      game.stop()
    }
    }
}
