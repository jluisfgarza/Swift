//
//  operacionViewController.swift
//  Parcial1v1E17
//
//  Created by alumno on 2/13/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class operacionViewController: UIViewController {

    @IBOutlet weak var lbloperacion: UILabel!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var tfmensaje: UITextField!
    @IBOutlet weak var btnRegresar: UIButton!
    
    var operacion = ""
    var resultado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbloperacion.text = (describing: operacion)
        lblResultado.text = (describing: resultado)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as! UIButton == btnRegresar{
            let vistaIni = segue.destination as! ViewController
            vistaIni.mensaje = tfmensaje.text!
        }
    }
    
}
