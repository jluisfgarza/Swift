//
//  Memoria.swift
//  Apple Watch
//
//  Created by Juan Luis Flores  on 3/22/17.
//  Copyright © 2017 Juan Luis Flores . All rights reserved.
//

import WatchKit
import Foundation


class Memoria: WKInterfaceController {
    
    @IBOutlet var lbRam: WKInterfaceLabel!
    @IBOutlet var lbDiscoDuro: WKInterfaceLabel!
    
    var pulgadas = 0
    var ram = 8
    var discoDuro = 512

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        if let pulgadas = context as? Int{
            self.pulgadas = pulgadas
        }
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
        return [pulgadas, ram, discoDuro]
    }
    
    @IBAction func ramSlide(_ value: Float) {
        if value == 0 {
            ram = 4
        } else if value == 1 {
            ram = 8
        } else if value == 2 {
            ram = 16
        } else if value == 3 {
            ram = 32
        }
        lbRam.setText("\(ram) gb")
    }
    
    @IBAction func discoDuroSlide(_ value: Float) {
        if value == 0 {
            discoDuro = 512
            lbDiscoDuro.setText("\(discoDuro) gb")
        } else {
            discoDuro = 1
            lbDiscoDuro.setText("\(discoDuro) tb")
        }
    }
}
