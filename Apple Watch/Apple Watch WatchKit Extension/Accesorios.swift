//
//  Accesorios.swift
//  Apple Watch
//
//  Created by Luis Felipe Salazar on 3/24/17.
//  Copyright © 2017 Juan Luis Flores . All rights reserved.
//

import WatchKit
import Foundation


class Accesorios: WKInterfaceController {
    
    var pulgadas = 0
    var ram = 0
    var discoDuro = 0
    var audifonos = true
    var mouse = true
    var teclado = true
    var ssd = true
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let datos = context as? [Int]{
            pulgadas = datos[0]
            ram = datos[1]
            discoDuro = datos[2]
        }
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        var accesorios = ""
        
        if !audifonos && !mouse && !teclado && !ssd {
            accesorios = "No se agregaron accesorios"
        } else {
            if audifonos {
                accesorios = "Audifonos\n"
            }
            if mouse {
                accesorios += "Mouse\n"
            }
            if teclado {
                accesorios += "Teclado\n"
            }
            if ssd {
                accesorios += "Disco duro SSD\n"
            }
        }
        
        return [pulgadas, ram, discoDuro, accesorios]
    }
    
    @IBAction func switchAudifonos(_ value: Bool) {
        audifonos = value
    }

    @IBAction func switchMouse(_ value: Bool) {
        mouse = value
    }
    
    @IBAction func switchTeclado(_ value: Bool) {
        teclado = value
    }
    
    @IBAction func switchSSD(_ value: Bool) {
        ssd = value
    }
    
    
}
