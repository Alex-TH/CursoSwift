//
//  Datos.swift
//  Hamburguesas
//
//  Created by Alejandro Trejo on 5/20/16.
//  Copyright © 2016 Alejandro Trejo. All rights reserved.
//

import Foundation

class ColleccionDePaises {
    let paises = ["Francia", "México", "Canada", "Argentina", "Italia", "Alemania","Brasil", "Peru",
                  "Estados Unidos", "Japon", "China", "Australia", "Rusia", "Noruega", "Inglaterra",
                  "India", "Bolivia", "Guatemala", "Grecia", "Rumania"]
    
    func obtenPais() -> String {
        return paises[Int(arc4random()) % paises.count]
    }
}

class ColleccionDeHamburguesas {
    let hamburguesas = ["Tradicional", "Con queso", "Patty Melt", "Sliders", "de vegetales",
                        "de Portobello","Maple", "Vegetariana","de Cordero y Maple", "Doble Queso",
                        "Western Beacon", "de Pollo", "de Camaron", "de Cordero", "Especial", "Con Chili",
                        "Mediterranea", "Chapetona","Mexicana", "Arabe"]
    
    func obtenHamburguesa() -> String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
}