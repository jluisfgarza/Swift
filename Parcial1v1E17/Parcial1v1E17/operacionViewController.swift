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
    
    var operacion: String!
    var resultado: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbloperacion.text = String(describing: operacion!)
        lblResultado.text = String(describing: resultado!)
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
    
    /*override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        /*if sender as! UIButton == btGuardar{
            if tfNombre.text! == "" || tfEmail.text! == "" {
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
        }
        return true */
    }*/


}
