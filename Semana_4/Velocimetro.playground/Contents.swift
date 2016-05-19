// Alejandro Trejo Huerta

enum Velocidades:Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial:Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad:Velocidades
    
    init() {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        var resultado : (actual : Int, velocidadEnCadena : String) = (velocidad.rawValue, "")
        switch velocidad {
            case .Apagado:
                velocidad = .VelocidadBaja
                resultado.velocidadEnCadena = "Apagado"
            case .VelocidadBaja:
                velocidad = .VelocidadMedia
                resultado.velocidadEnCadena = "Velocidad baja"
            case .VelocidadMedia:
                velocidad = .VelocidadAlta
                resultado.velocidadEnCadena = "Velocidad media"
            case .VelocidadAlta:
                velocidad = .VelocidadMedia
                resultado.velocidadEnCadena = "Velocidad alta"
        }
        return resultado
    }
}

var auto: Auto = Auto()

for n in 0..<20{
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}
