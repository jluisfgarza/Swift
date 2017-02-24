//
//  ViewControllerCalifica.swift
//  protocolosSwift3Ago16
//
//  Created by alumno on 2/23/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

protocol protocoloCalificaAlumno {
    func calificaAlumno(nombre: String, Calificacion: Int, Comentarios: String) -> Void
}

class ViewControllerCalifica: UIViewController {

    @IBOutlet weak var tfnombre: UITextField!
    @IBOutlet weak var tfcalif: UITextField!
    @IBOutlet weak var txtview: UITextView!
    @IBOutlet weak var btnlisto: UIButton!

    var delegado: protocoloCalificaAlumno!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Detalle Alumno"
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
    @IBAction func listobtn(_ sender: UIButton) {
            let nom = tfnombre.text!
            let calif = Int(tfcalif.text!)
            let comen = txtview.text!
            
            if nom != "" && calif != nil && comen != "" {
                delegado.calificaAlumno(nombre: nom, Calificacion: calif!, Comentarios: comen)
                navigationController!.popToRootViewController(animated: true)
        }
    }

}
