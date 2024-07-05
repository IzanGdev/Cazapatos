import wollok.game.*


class Ave{
  var property position = null
  var property image = null
  var property x = 0
  var property y = 4.randomUpTo(game.height()).truncate(0)

  method puntosQueDa() = 0

  method spawn() {
  }

  method volar() {    
  }

  method caerMuerto() {
  }
}



class Pollo inherits Ave{


  override method puntosQueDa() = 1

  override method volar(){
    x = x-1
    position = game.at(x,y)
  }

  override method spawn(){
  x = 18
  position = game.at(x, y)
  image = "poshoFly Final.png"
  game.addVisual(self)
  self.volar()
  }
}

class Pato inherits Ave {

override method puntosQueDa() = 2

override method volar(){
    position = self.position().right(1) 
}

override method spawn(){
  x=0
  position = game.at(x, y)
  image = "patoFly Final.png"
  game.addVisual(self)
  game.onTick(500, "volar", {self.volar()})
}
  
}