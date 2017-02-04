//
//  PrismaViewController.swift
//  Cuerpos	Geométricos
//
//  Created by Juan Luis Flores on 01/02/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class PrismaViewController: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfLargo: UITextField!
    @IBOutlet weak var tfAncho: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var btCancelar: UIButton!
    @IBOutlet weak var btGuardar: UIButton!
    
    var largo : CGFloat!
    var ancho : CGFloat!
    var altura : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view.addGestureRecognizer(tap)
        largo = 0
        ancho = 0
        altura = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    func quitaTeclado() {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as! UIButton == btGuardar{
            let largo = Double(tfLargo.text!)!
            let ancho = Double(tfAncho.text!)!
            let altura = Double(tfAltura.text!)!
            
            let vistaInicio = segue.destination as! ViewController
            vistaInicio.Datos = "Largo= " + tfLargo.text!
            vistaInicio.Datos2 = "Ancho= " + tfAncho.text!
            vistaInicio.Datos3 = "Altura= " + tfAltura.text!
            vistaInicio.imagen = imgFoto.image!
            
            let volumen = largo * ancho * altura
            vistaInicio.volumen = String(volumen)
        }
        //Cancelar
        //La primer vez que se cancela no se regresa la imagen
        let vistaInicio = segue.destination as! ViewController
        if vistaInicio.imagen == nil{
            vistaInicio.imagen = #imageLiteral(resourceName: "CuerposGeometricos")
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as! UIButton == btGuardar{
            if tfLargo.text! == "" || tfAncho.text! == "" || tfLargo.text! == "" {
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
        }
        return true
    }
    
    
}

