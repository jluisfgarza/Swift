//
//  ViewController.swift
//  Cuerpos	Geométricos
//
//  Created by Juan Luis Flores on 01/02/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbDatos: UILabel!
    @IBOutlet weak var lbDatos2: UILabel!
    @IBOutlet weak var lbDatos3: UILabel!
    @IBOutlet weak var lbVolumen: UILabel!
    
    var Datos : String!
    var Datos2 : String!
    var Datos3 : String!
    var volumen : String!
    var imagen : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    
    @IBAction func unwindEsfera(unwindSegue : UIStoryboardSegue){
        lbDatos.text = Datos
        lbDatos2.text = ""
        lbDatos3.text = ""
        lbVolumen.text = volumen
        imgFoto.image = imagen
    }
    
    @IBAction func unwindPrisma(unwindSegue : UIStoryboardSegue){
        lbDatos.text = Datos
        lbDatos2.text = Datos2
        lbDatos3.text = Datos3
        lbVolumen.text = volumen
        imgFoto.image = imagen
    }
    
    @IBAction func inicio(_ sender: Any) {
        imgFoto.image = #imageLiteral(resourceName: "CuerposGeometricos")
        lbDatos.text = ""
        lbDatos2.text = ""
        lbDatos3.text = ""
        lbVolumen.text = ""
    }
    
}
