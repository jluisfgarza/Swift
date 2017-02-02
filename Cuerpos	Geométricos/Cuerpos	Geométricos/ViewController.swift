//
//  ViewController.swift
//  Cuerpos	Geométricos
//
//  Created by Abril González on 01/02/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var lblVolume: UILabel!
    
    var info :  String!
    var volume : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindEsfera(unwindSegue: UIStoryboardSegue ){
        
    }
    
    @IBAction func unwindPrisma(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Esfera" {
            let vistaesfera = segue.destination as! EsferaViewController
            vistaesfera.radio = lblInfo.text!
            vistaesfera.volume = lblVolume.text!
        } else {
            let vistaprisma = segue.destination as! PrismaViewController
            vistaprisma.largo = lblInfo.text!
            vistaprisma.ancho = lblVolume.text!
            vistaprisma.altura = lblVolume.text!

        }
    }
    
}



