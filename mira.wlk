import wollok.game.*
import juego.*
import aves.*
import score.*

object mira {
    var property position = game.at(9, 9)
    method image() = "mira Final.png"

    method disparar(lista) {
        lista.forEach { ave =>
            if (ave.position() == self.position()) {
                ave.caerMuerto()
                score.actualizarPuntaje(ave.puntosQueDa())
            }
        }
    }
}
