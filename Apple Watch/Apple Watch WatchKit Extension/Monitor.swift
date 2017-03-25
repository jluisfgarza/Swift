//
//  Monitor.swift
//  Apple Watch
//
//  Created by Juan Luis Flores  on 3/22/17.
//  Copyright © 2017 Juan Luis Flores . All rights reserved.
//

import WatchKit
import Foundation


class Monitor: WKInterfaceController {

    @IBOutlet var lbPulgadas: WKInterfaceLabel!
    
    var pulgadas = 13
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
        return pulgadas
    }

    @IBAction func monitorSlide(_ value: Float) {
        if value == 0 {
            pulgadas = 11
            lbPulgadas.setText("11 pulgadas")
        } else if value == 1 {
            pulgadas = 13
            lbPulgadas.setText("13 pulgadas")
        } else if value == 2 {
            pulgadas = 15
            lbPulgadas.setText("15 pulgadas")
        }
    }
}
