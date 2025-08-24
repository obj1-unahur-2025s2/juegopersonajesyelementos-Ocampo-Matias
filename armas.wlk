
object ballesta {
    var flechasDisponibles = 10
    var estaUsada = false

    method potencia() = 4
    method estaUsada () = estaUsada
    method estaCargada() = flechasDisponibles > 0

    method usar() {
      flechasDisponibles = flechasDisponibles - 1
      estaUsada = true
    }



}

object javalina {
    var carga = 1

    method potencia() = 160
    method estaCargada() = carga == 1

    method usar() {
      carga = 0
    }

}

