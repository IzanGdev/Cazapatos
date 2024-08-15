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
    const property avesSpawneadas = []
    method spawnPato() {
        game.onTick(5000, "spawn pato", {new Pato(x=0, image="patoFly Final.png").spawn()})
    }
    method spawnPollo() {
        game.onTick(4000, "spawn pollo", {new Pollo(x=18, image="poshoFly Final.png").spawn()})
    }
    method iniciar() {
        self.spawnPato()
        self.spawnPollo()
        game.addVisualCharacter(mira)
        game.addVisual(puntaje)
        game.addVisual(score)
        keyboard.space().onPressDo{mira.disparar(avesSpawneadas)}
    }

}

object win {
    var property position = game.at(1,7)
    var property image = "win R.png"
    
}
