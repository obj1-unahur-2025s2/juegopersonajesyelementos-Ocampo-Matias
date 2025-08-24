import elementos.*
import armas.*

object floki {
    var arma = ballesta

    method encontrar(elemento) {
        if (arma.estaCargada()) {
            elemento.recibirAtaque(arma.potencia())
            arma.usar()
        }
    }
    method cambiarArma(nuevaArma) {
        arma = nuevaArma
    }

}
object mario {
    var valorRecolectado = 0
    var ultimoElemento = ningunElemento
    method encontrar(elemento) {
        elemento.recibirTrabajo()
        valorRecolectado += elemento.valorOtorgado()
        ultimoElemento = elemento
    }
    method estaFeliz() {
        return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
    }
  
}

object  luisa {
  var personajeActivo = ningunPersonaje

  method cambiarPersonaje(nuevoPersonaje) {
      personajeActivo = nuevoPersonaje
  }
  method aparece(elemento) {
      personajeActivo.encontrar(elemento)
  }
}

object ningunPersonaje {
    method encontrar(elemento) {

    }
  
}