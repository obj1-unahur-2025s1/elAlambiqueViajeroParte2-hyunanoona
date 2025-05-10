import luke.*
import ciudades.*

object alambiqueVeloz {
    const rapido = 100
    var combustible = 20
    const consumoPorViaje = 10
    const patente = "AB123JK"
    method puedeFuncionar() = combustible >= consumoPorViaje
    method desgaste() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
    method patenteValida() = patente.head() == "A"
}

object antigualla {
  const gangsters = ["mario", "marco", "chincho", "brian", "florencia", "amelie", "pablo"]
  method rapido() = gangsters.fold(0,{acum,gangster => acum + gangster.length()}) 
  method puedeFuncionar() = gangsters.size().even()
  method desgaste() {
    gangsters.remove(gangsters.last())
  }
  method bajarDelAuto(unGangster) = gangsters.remove(unGangster)
  method subirAlAuto(unGangster) = gangsters.add(unGangster)
  method patenteValida() = chatarra.rapido() 
}

object chatarra {
  var velocidadBase= 20
  var cañones = 5
  method rapido() = velocidadBase*cañones
  method hacerTrampa() {
    cañones = cañones - 1
  }
  method desgaste() {
    velocidadBase = velocidadBase - 5
  }
  method patenteValida() = velocidadBase > 20
  method puedeFuncionar() = cañones>6
}

object convertible{
    var posicionActual = 0
    var convertido = chatarra
    const autosAConvertir = [chatarra, alambiqueVeloz, antigualla, moto]
    method autoActual() = convertido
    method puedeFuncionar() = convertido.puedeFuncionar() 
    method rapido() = convertido.rapido()
    method desgaste() = convertido.desgaste()
    method convertirse() {
        posicionActual = posicionActual + 1
        convertido = autosAConvertir.get(posicionActual)
    }
    method convertir(vehiculo){
        convertido = vehiculo
    }
    method patenteValida() = convertido.patenteValida()

}

object moto{
    method rapido() = 60   
    method puedeFuncionar() = self.rapido() >= 20
    method desgaste() { }
    method patenteValida() = false
    
}