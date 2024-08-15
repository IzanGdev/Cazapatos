import wollok.game.*
import juego.*
import score.*
import mira.*




class Ave{
  var property position = game.at(x, y)
  var property image
  var property x = 0
  var property y = 4.randomUpTo(game.height()).truncate(0)

  method puntosQueDa() = 0

  method spawn() {
    videojuego.avesSpawneadas().add(self)
    game.addVisual(self)
    self.volar()
  }

  method despawn() {
  game.removeVisual(self)
  game.removeTickEvent("despawn")
  }

  method volar() {    
  }

}


class Pollo inherits Ave{


  override method puntosQueDa() = 1

  override method volar(){
    game.onTick(400, "volar", {position = self.position().left(1)})
  }


  method caerMuerto() {
    game.removeTickEvent("spawn pollo")
    self.despawn()
    
  }
}

class Pato inherits Ave {
override method puntosQueDa() = 2

override method volar(){
  game.onTick(200, "volar", {position = self.position().right(1)})
}


method caerMuerto() {
  game.removeTickEvent("spawn pato")
  self.despawn()
  
}
  
}
