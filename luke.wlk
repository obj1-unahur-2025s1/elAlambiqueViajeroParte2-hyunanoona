import autos.*
import ciudades.*

object luke{
    var cantidadViajes = 0
    var recuerdo = null
    var vehiculo = alambiqueVeloz

    method cantidadViajes() = cantidadViajes 

    method viajar(lugar){
        if (lugar.puedeLlegar(vehiculo)) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            vehiculo.desgaste()
        }
    }
    method recuerdo() = recuerdo
    method vehiculo(nuevo) {vehiculo = nuevo}
}

object centro {
    var lugarCarrera = buenosAires
    const inscriptos = #{}
    const rechazados = #{}
    const listaMomentanea = #{}
    method verificar(vehiculo){
        if(lugarCarrera.puedeLlegar(vehiculo)){
            inscriptos.add(vehiculo)
        }
        else{
            rechazados.add(vehiculo)
        }
    }
    method replanificacionEn(unLugar) {
      lugarCarrera = unLugar
      listaMomentanea.union(inscriptos)
      listaMomentanea.union(rechazados)
      listaMomentanea.forEach{v => self.verificar(v)}
    }
    method llevarATodosALaUbicacion() = inscriptos.forEach{inscripto => inscripto.desgaste()}
    method ganador() = inscriptos.max{i => i.rapido()}
} 
