//
//  ViewController.swift
//  PopOver
//
//  Created by alumno on 4/17/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var dato: UILabel!
    var datoRecibido : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark: - Metodo de protocolo de de popover
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    // Mark: - Metodo de protocolo de de popover
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistapopover = segue.destination as! PopOverViewController
        vistapopover.popoverPresentationController?.delegate = self
    }
    
    func actualizaDato(){
        dato.text = datoRecibido
    }

}

