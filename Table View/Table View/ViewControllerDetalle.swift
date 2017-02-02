//
//  ViewControllerDetalle.swift
//  Table View
//
//  Created by alumno on 2/2/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewControllerDetalle: UIViewController {

    @IBOutlet weak var lbldetalle: UILabel!
    var datoMostrar : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbldetalle.text = datoMostrar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    

}
