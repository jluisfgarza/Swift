//
//  Vista1ViewController.swift
//  CeldasEstaticas
//
//  Created by Juan Luis Flores on 2/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class Vista1ViewController: UIViewController {
    
    @IBOutlet weak var EtiquetaVista1: UILabel!
    var recibidorVista1 : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        EtiquetaVista1.text = recibidorVista1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

}
