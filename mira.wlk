import wollok.game.*
import juego.*
import aves.*

object mira {
  var property position = game.at(9,9)
  method image() = "mira Final.png"

//este metodo tiene que analizar la posicion y determinar si el pato muere o no
  method disparar() {
    game.say(self, "gei")

  }
}