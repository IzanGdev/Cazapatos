import wollok.game.*
import mira.*
import aves.*
import score.*




object menu {
    var property position = game.at(0,0)
    method image() = "menuPrincipal.png"

    method iniciarJuego(){
        keyboard.any().onPressDo{
            game.removeVisual(self)
            videojuego.iniciar()
        }
    }
}

object videojuego {
  method spawnPato(){
    game.onTick(10000, "spawn", {new Pato().spawn()})
  }
  method iniciar() {
    self.spawnPato()
    game.addVisualCharacter(mira)
  }
}