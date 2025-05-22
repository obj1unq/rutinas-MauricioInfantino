import rutina.*
class Persona {
    
    var property peso //el setter es solo para los test

    method aplicar(rutina) {
        peso -= self.pesoQuePierdeDespuesDe(rutina)
    }

    method pesoQuePierdeDespuesDe(rutina) = rutina.caloriasGastadasEn(self.tiempo()) / self.kilosPorCaloriasQuePierde()

    method tiempo() 

    method kilosPorCaloriasQuePierde()
}

class Sedentaria inherits Persona{

    const tiempo

    override method tiempo() = tiempo

    override method kilosPorCaloriasQuePierde() = 7000

    override method aplicar(rutina) {
        if(self.puedeAplicarRutina()){super(rutina)}
    }

    method puedeAplicarRutina() = self.peso() > 50
}

class Atleta inherits Persona{

    override method kilosPorCaloriasQuePierde() = 8000

    override method tiempo() = 90

    override method pesoQuePierdeDespuesDe(rutina) = super(rutina) -1

    override method aplicar(rutina) {
        if (self.puedeAplicar(rutina)){super(rutina)}
    }

    method puedeAplicar(rutina) = rutina.caloriasGastadasEn(self.tiempo()) > 10000
}