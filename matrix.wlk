object nave {
    var pasajeros = [neo, morfeo, trinity]
    method seVanTodos() {
        return pasajeros.clear()
    }
    method cantidadPasajeros() {
        return pasajeros.size()
    }
    method pasajeroMayorVitalidad() {
        return pasajeros.max({p => p.vitalidad()})
    }
    method pasajeroMenorVitalidad() {
        return pasajeros.min({p => p.vitalidad()})
    }
    method estaEquilibradaEnVitalidad() {
        return pasajeros.pasajeroMayorVitalidad() <= pasajeros.pasajeroMenorVitalidad().vitalidad() * 2
    }
    method elElegidoEsta() {
        return pasajeros.contains({p => p.elegido()})
    }
    method choca() {
        return pasajeros.forEach({p => p.saltan()}).seVanTodos()
    }
    method acelera() {
        return pasajeros.filter({p => !p.elElElegidoEsta()}).forEach({p => p.saltar()})
}

object neo {
    var estaAbajoDeNave = true
    var elegido = true
    var energia = 100
    method elegido() = elegido
    method energia() = energia
    method salta() {
        self.energia() / 2
    }
    method vitalidad() {
        self.energia() / 10
    }
    method seVanDeLaNave() {
        estaAbajoDeNave = false
    }
    method estaEnLaNave() {
        estaAbajoDeNave = true
    }
}
object morfeo {
    var estaAbajoDeNave = true
    var elegido = false
    var energia = 100
    var vitalidad = 8
    var descansado = true
    method elegido() = elegido
    method energia() = energia
    method salta() {
        if(descansado) {
            descansado = false
            self.vitalidad() - 1
        } else {
            descansado = true
            self.vitalidad() - 1
        }
    }
    method vitalidad() = vitalidad
    method seVanDeLaNave() {
        estaAbajoDeNave = false
    }
    method estaEnLaNave() {
        estaAbajoDeNave = true
    }
}
object trinity {
    var estaAbajoDeNave = true
    var elegido = false
    var energia = 100
    var vitalidad = 0
    method elegido() = elegido
    method salta() {
        return 
    }
    method vitalidad() = vitalidad
    method energia() = energia
    method seVanDeLaNave() {
        estaAbajoDeNave = false
    }
    method estaEnLaNave() {
        estaAbajoDeNave = true
    }
}