//
//  ViewController.swift
//  Tarea 1 Triangulos
//
//  Created by Juan Luis Flores on 12/01/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfLado1: UITextField!
    @IBOutlet weak var tfLado2: UITextField!
    @IBOutlet weak var tfLado3: UITextField!
    @IBOutlet weak var sCambio: UISwitch!
    @IBOutlet weak var lblMensaje: UILabel!
    @IBOutlet weak var btnCalcula: UIButton!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateswitchstate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Action Methods
    
    @IBAction func hidekeyboard(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func changefunc(_ sender: UISwitch) {
        
        updateswitchstate()
    }
    
    func updateswitchstate() {

        lblMensaje.isHidden = true

        if sCambio.isOn {
            
            btnCalcula.setTitle("Type of triangle",for: .normal)
            img.isHidden = false
            img.image = #imageLiteral(resourceName: "default")

        }
        if !sCambio.isOn {
            
            btnCalcula.setTitle("Get area",for: .normal)
            img.isHidden = true
        }

    }
    
    @IBAction func Calcula(_ sender: UIButton) {
        
        let l1 = Double(tfLado1.text!)
        let l2 = Double(tfLado2.text!)
        let l3 = Double(tfLado3.text!)
        
        if l1 != nil && l2 != nil && l3 != nil {
            
            if sCambio.isOn {

                if l1 == l2 && l2 == l3 && l1 == l3 {
                
                    lblMensaje.isHidden = false
                    lblMensaje.text = "Equilateral"
                    img.image = #imageLiteral(resourceName: "Equilatero")
                }
                if l1 != l2 && l2 != l3 && l1 != l3  {
                    
                    lblMensaje.isHidden = false
                    lblMensaje.text = "Scalene"
                    img.image = #imageLiteral(resourceName: "Escaleno")
                }
                if (l1 == l2 && l1 != l3) || (l1 == l3 && l1 != l2) || (l2 == l3 && l2 != l1){
                    
                    lblMensaje.isHidden = false
                    lblMensaje.text = "Isosceles"
                    img.image = #imageLiteral(resourceName: "Isosceles")

                }
                view.endEditing(true)
            }
            if !sCambio.isOn {
               
                let s = (l1! + l2! + l3!)/2
                let area = Double(sqrt(s * (s - l1!) * (s - l2!) * (s - l3!)))
                lblMensaje.isHidden = false
                lblMensaje.text = "The area is =  \(area)"
                view.endEditing(true)
            }
        }
        else {
            
            let alert = UIAlertController(title: "ERROR", message: "Use numeric values", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
    }
}

        
