//
//  Resumen.swift
//  Apple Watch
//
//  Created by Juan Luis Flores  on 3/22/17.
//  Copyright © 2017 Juan Luis Flores . All rights reserved.
//

import WatchKit
import Foundation


class Resumen: WKInterfaceController {

    @IBOutlet var lbMonitor: WKInterfaceLabel!
    @IBOutlet var lbRam: WKInterfaceLabel!
    @IBOutlet var lbDiscoDuro: WKInterfaceLabel!
    @IBOutlet var lbAccesorios: WKInterfaceLabel!
    
    var pulgadas = 0
    var ram = 0
    var discoDuro = 0
    var accesorios = "No se agregaron accesorios"
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let datos = context as? [Any]{
            pulgadas = (datos[0] as? Int)!
            ram = (datos[1] as? Int)!
            discoDuro = (datos[2] as? Int)!
            accesorios = (datos[3] as? String)!
        }
        
        
        lbMonitor.setText("\(pulgadas) pulgadas")
        lbRam.setText("\(ram) gb")
        
        if discoDuro == 1 {
            lbDiscoDuro.setText("\(1) tb")
        } else {
            lbDiscoDuro.setText("\(discoDuro) gb")
        }
        
        lbAccesorios.setText(accesorios)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
