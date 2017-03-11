//
//  ViewController.swift
//  EjercicioPersistencia
//
//  Created by Juan Luis Flores on 3/9/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfExistencia: UITextField!
    @IBOutlet weak var tfDescripcion: UITextField!
    @IBOutlet weak var tfID: UITextField!
    
    var listaArticlos : NSMutableDictionary!
    
    var status : String!
    var valores = NSDictionary()
    var apuntador = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfExistencia.text = valores.value(forKey: "existencia") as! String?
        tfDescripcion.text = valores.value(forKey: "descripcion") as! String?
        tfID.text = valores.value(forKey: "id") as! String?
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    @IBAction func PressedGuardar(_ sender: Any) {
        
        listaArticlos = NSMutableDictionary()
        listaArticlos.setValue(tfExistencia.text!, forKey: "existencia")
        listaArticlos.setValue(tfDescripcion.text!, forKey: "descripcion")
        listaArticlos.setValue(tfID.text!, forKey: "id")
        
        let tid = String(tfID.text!)
        let tdes = String(tfDescripcion.text!)
        let tex = String(tfExistencia.text!)
        
        if tid != "" && tdes != "" && tex != "" {
        
            if status == "Modify" {
            
                apuntador.modifica(articulo: listaArticlos)
                _ = self.navigationController?.popViewController(animated: true)
                dismiss(animated: true, completion: nil)

            } else if status == "Add" {
            
                apuntador.agrega(articulo: listaArticlos)
                _ = self.navigationController?.popViewController(animated: true)
                dismiss(animated: true, completion: nil)
            }
        } else {
                
                let alert = UIAlertController(title: "ERROR", message: "Introduce Valores", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
                present(alert, animated: true, completion: nil)
        }
    }
}
