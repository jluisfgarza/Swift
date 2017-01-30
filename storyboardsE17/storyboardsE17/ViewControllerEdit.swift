//
//  ViewControllerEdit.swift
//  storyboardsE17
//
//  Created by alumno on 1/30/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEdit: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btnsave: UIButton!
    @IBOutlet weak var btncancel: UIButton!
    
    var nombre : String!
    var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tfName.text = nombre
        tfEmail.text = email
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if sender as! UIButton == btnsave {
            let vistaInc = segue.destination as! ViewController
            vistaInc.nombre = tfName.text
            vistaInc.email = tfEmail.text
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as! UIButton == btnsave {
            if tfName.text! == "" || tfEmail.text! == "" {
                let alerta = UIAlertController(title: "ERROR", message: "los campos requeridos deben tener datos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
        }
        return true
    }

}
