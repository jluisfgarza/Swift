//
//  ViewController.swift
//  Parcial1v1E17
//
//  Created by Yolanda Martinez on 2/10/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myswitch: UISwitch!
    @IBOutlet weak var myview1: UIView!
    @IBOutlet weak var lbllettermobe: UILabel!
    @IBOutlet weak var myslider: UISlider!
    
    
    @IBOutlet weak var lblLetrero: UILabel!
    @IBOutlet weak var mysegment: UISegmentedControl!
    
    
    @IBOutlet weak var operador1: UITextField!
    @IBOutlet weak var operador2: UITextField!
    @IBOutlet weak var lblmensaje: UILabel!
    
    var op1 : String!
    var op2 : String!
    var mensaje = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateswitchstate()
        lblmensaje.text = mensaje
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func hidekeyboard(_ sender: Any) {
        view.endEditing(true)
    }

    func updateswitchstate() {
        
        if myswitch.isOn {
            
            myview1.isHidden = false
        }
        if !myswitch.isOn {
            
            myview1.isHidden = true
        }
    }
    
    @IBAction func changeswitch(_ sender: UISwitch) {
        updateswitchstate()
    }
    
    @IBAction func slide(_ sender: UISlider) {
        let pos = myview1.frame.width - lbllettermobe.frame.width
        lbllettermobe.frame.origin.x = pos * CGFloat(sender.value)
    }

    @IBAction func segmentchange(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 1 {
            lblLetrero.textColor = UIColor.blue
        }
        else {
            lblLetrero.textColor = UIColor.red
        }
    }
    
    @IBAction func unwindOperacion(unwindSegue : UIStoryboardSegue){
        operador1.text = op1
        operador2.text = op2
        lblmensaje.text = mensaje
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (operador1.text == "" || operador2.text == "")
        {
            let alert = UIAlertController(title: "ERROR", message: "Los campos deben tener dato numerico", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
            
            present(alert, animated: true, completion: nil)
            
            
        } else
        {
            let vistaOp = segue.destination as! operacionViewController
            let dop1 = Double(operador1.text!)
            let dop2 = Double(operador2.text!)
            
            let resta = (dop1! - dop2!)
            let sumar = (dop1! + dop2!)
            let multi = (dop1! * dop2!)
            
            if segue.identifier == "suma"{
                vistaOp.resultado = "\(dop1) + \(dop2) = \(sumar)"
                vistaOp.operacion = "suma"
            }
            if segue.identifier == "resta"{
                vistaOp.resultado = "\(dop1) - \(dop2) = \(resta)"
                vistaOp.operacion = "resta"
            }
            if segue.identifier == "multiplica"{
                vistaOp.resultado = "\(dop1) * \(dop2) = \(multi)"
                vistaOp.operacion = "multiplicacion"
            }
        }
    }

}

