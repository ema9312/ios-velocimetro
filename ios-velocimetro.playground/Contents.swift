
//: Velocimetro por Emmanuel Agüero Murillo

// enum velocidades con cada uno de sus elementos
enum Velocidades: Int {
    case apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    // init del enum
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto{
    // atributo de tipo Velocidades
    var velocidad: Velocidades
    
    // variables para almacenar el resultado de la funcion cambioDeVelocidad()
    var velocidadActual: Int
    var velocidadEnCadena: String
    
    // init de la clase Auto
    init() {
        // inicializacion en apagado usando el init del enum
        velocidad = Velocidades.init(velocidadInicial: Velocidades.apagado)
        
        // inicializacion de las variables de resultado
        self.velocidadActual = 0
        self.velocidadEnCadena = ""
    }
    
    // metodo cambioDeVelocidad()
    func cambioDeVelocidad() ->( actual : Int, velocidadEnCadena: String){
        var resultado = (velocidadActual, velocidadEnCadena)
        switch velocidad {
        case Velocidades.apagado :
            resultado = (velocidad.rawValue, "Apagado")
            velocidad = Velocidades.velocidadBaja
            return resultado
            
        case Velocidades.velocidadBaja :
            resultado = (velocidad.rawValue, "Velocidad Baja")
            velocidad = Velocidades.velocidadMedia
            return resultado
            
        case Velocidades.velocidadMedia :
            resultado = (velocidad.rawValue, "Velocidad Media")
            velocidad = Velocidades.velocidadAlta
            return resultado
            
        case Velocidades.velocidadAlta :
            resultado = (velocidad.rawValue, "Velocidad Alta")
            velocidad = Velocidades.velocidadMedia
            return resultado
        }
        
    }
    
}

// Creacion de Instancia de Auto
var auto = Auto()

// Iteracion del metodo cambioDeVelocidad()
for _ in 0...20{
    print(auto.cambioDeVelocidad())
}
