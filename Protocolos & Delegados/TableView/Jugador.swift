//
//  Jugador.swift
//  TableView
//
//  Created by alumno on 2/9/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    var nombre : String = ""
    var puntos : Int = 0
    var email : String = ""
    
    init(nombre : String, puntos : Int, email : String) {
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
    }
}
