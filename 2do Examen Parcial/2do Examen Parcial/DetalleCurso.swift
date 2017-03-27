//
//  DetalleCurso.swift
//  2do Examen Parcial
//
//  Created by alumno on 3/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

protocol protocoloModifica {
    func Modifica(numCurso: String, tema: String, precio: Double) -> Void
}

class DetalleCurso: UIViewController {

    @IBOutlet weak var lblnum: UILabel!
    @IBOutlet weak var lbltema: UILabel!
    @IBOutlet weak var tfprecio: UITextField!
    
    var Dic : NSDictionary!
    var num: String!
    var tema: String!
    var precio : Double!
    var delegado: protocoloModifica!
    @IBOutlet weak var btnmodifica: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblnum.text = (Dic.value(forKey: "numCurso") as? String)!
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let precio = (Dic.value(forKey: "precio") as? NSNumber)!
        tfprecio.text = formatter.string(from: precio)
        lbltema.text = Dic.value(forKey: "tema") as? String
        // Do any additional setup after loading the view.
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
    @IBAction func Modifica(_ sender: UIButton) {
        if (sender == btnmodifica){
            let tnum = lblnum.text!
            let tprecio = Double(tfprecio.text!)
            let ttema = lbltema.text!
            
            if num != "" && precio != nil && tema != "" {
                delegado.Modifica(numCurso: tnum, tema: ttema, precio: tprecio!)
            }
        }
        navigationController!.popViewController(animated: true)
    }

}
