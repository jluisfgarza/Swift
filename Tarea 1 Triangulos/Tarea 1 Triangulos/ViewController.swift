//
//  ViewController.swift
//  Tarea 1 Triangulos
//
//  Created by Abril González on 12/01/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfLado1: UITextField!
    @IBOutlet weak var tfLado2: UITextField!
    @IBOutlet weak var tfLado3: UITextField!
    @IBOutlet weak var sCambio: UISwitch!
    @IBOutlet weak var lblMensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Action Methods
    
    @IBAction func hidekeyboard(_ sender: Any) {
        
        view.endEditing(true)
    }

    
    @IBAction func Calcula(_ sender: UIButton) {
        /*
        let l1 = Double(tfLado1.text!)
        let l2 = Double(tfLado2.text!)
        let l3 = Double(tfLado3.text!)
        
        if tfLado1 != nil && tfLado2 != nil && tfLado2 != nil {
            
            if onState {
                let s = (l1! + l2! + l3!)/2
                let area = Double(sqrt(s * (s - l1!) * (s - l2!) * (s - l3!)))
                lblMensaje.text = "El area es = " + area
                view.endEditing(true)
            }
            if !onState {
                aa
            }
        }
        else {
            
            let alert = UIAlertController(title: "ERROR", message: "Use numeric values", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }*/
    }
}

        
