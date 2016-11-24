//: Velocímetro de Automóvil Digital   

import UIKit

enum Velocidades: Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        
        self = velocidadInicial
        
    }
    
}

class Auto {
    
    var velocidad: Velocidades
    
    init (){
        
        velocidad = Velocidades (velocidadInicial: .Apagado)
        
    }
    
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String){
        
        var mensaje = ""
        var velocidadActual: Velocidades
        
        switch velocidad {
            
        case .Apagado:
            
            velocidadActual = velocidad
            mensaje = "Apagado"
            velocidad = .VelocidadBaja
            
            return (velocidadActual.rawValue, mensaje)
            
        case .VelocidadBaja:
            
            velocidadActual = velocidad
            mensaje = "Velocidad baja"
            velocidad = .VelocidadMedia
            
            return (velocidadActual.rawValue, mensaje)
            
        case .VelocidadMedia:
            
            velocidadActual = velocidad
            mensaje = "Velocidad media"
            velocidad = .VelocidadAlta
            
            return (velocidadActual.rawValue, mensaje)
            
        case .VelocidadAlta:
            
            velocidadActual = velocidad
            mensaje = "Velocidad alta"
            velocidad = .VelocidadMedia
            
            return (velocidadActual.rawValue, mensaje)
            
        }
        
        
    }
    
}

var auto = Auto()
var resultadoVelocidad: (actual: Int, velocidadEnCadena: String)

for i in 1...20 {
    
    resultadoVelocidad = auto.cambioDeVelocidad()
    print ("\(resultadoVelocidad.actual), \(resultadoVelocidad.velocidadEnCadena)")

}
