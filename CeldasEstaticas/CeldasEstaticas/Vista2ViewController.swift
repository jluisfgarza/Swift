//
//  Vista2ViewController.swift
//  CeldasEstaticas
//
//  Created by Juan Luis Flores on 2/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class Vista2ViewController: UIViewController {

    @IBOutlet weak var EtiquetaVista2: UILabel!
    var recibidorVista2 : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        EtiquetaVista2.text = recibidorVista2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

}
