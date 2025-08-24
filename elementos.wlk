

object castillo {
    var defensa = 150

    method defensa() = defensa
    method altura() = 20
    method recibirAtaque(potencia) {
      defensa = 0.max(defensa - potencia)
    }
    method valorOtorgado() = defensa * 0.2
    method recibirTrabajo() {
        defensa=  200.min(defensa +20)
    }
}
object aurora {
    var estaViva = true

    method estaViva() = estaViva
    method altura() = 1
    method recibirAtaque(potencia) {
        if (potencia >= 10) {
            estaViva = false
        }
    }
    method recibirTrabajo() {
        
    }
    method valorOtorgado() = 15
}
object tipa {
    var altura = 8
    method altura() = altura
    method crecer() {
        altura = altura + 1
    }
    method recibirAtaque(potencia) {}
    method valorOtorgado() =  altura * 2
    method recibirTrabajo() {
        self.crecer()
    }

}

object ningunElemento {
    method estaViva() = false
    method altura() = 0
    method recibirAtaque(potencia) {}
}