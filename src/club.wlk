class Club{

    const predios = #{}

    method mejorPredio(persona) = predios.max({predio => predio.totalDeCaloriasQuemadasPor(persona)})

    method prediosTranquis(persona) = predios.filter({predio => predio.tieneRutinaTranqui(persona)})

    method rutinasExigentes(persona) {
        const rutinasMasExigentes = #{}
        predios.forEach({predio => rutinasMasExigentes.add(predio.rutinaMasExigentePara(persona))})
        return rutinasMasExigentes
    }
}

class Predio{

    const rutinas = #{}

    method totalDeCaloriasQuemadasPor(persona) = rutinas.sum({rutina => rutina.caloriasGastadasEn(persona.tiempo())})

    method tieneRutinaTranqui(persona) = rutinas.any({rutina => rutina.caloriasGastadasEn(persona.tiempo()) < 500})

    method rutinaMasExigentePara(persona) = rutinas.max({rutina => rutina.caloriasGastadasEn(persona.tiempo())})
}