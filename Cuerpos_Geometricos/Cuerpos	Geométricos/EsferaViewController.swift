//
//  EsferaViewController.swift
//  Cuerpos	Geométricos
//
//  Created by Juan Luis Flores on 2/1/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class EsferaViewController: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfRadio: UITextField!
    @IBOutlet weak var btCancelar: UIButton!
    @IBOutlet weak var btGuardar: UIButton!
    
    var radio : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view.addGestureRecognizer(tap)
        radio = 0
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
            let radio = Double(tfRadio.text!)!
            
            let vistaInicio = segue.destination as! ViewController
            vistaInicio.Datos = "Radio= " + tfRadio.text!
            vistaInicio.imagen = imgFoto.image!
            
            let volumen = (4/3) * 3.1416 * pow(radio,3)
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
            if tfRadio.text! == "" {
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
        }
        return true
    }
    
}
