//
//  ViewControllerAgregar.swift
//  TableView
//
//  Created by alumno on 2/20/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

protocol protocoloAgregaJugador {
    func agregaJugador(nombre: String, puntos: Int, email: String) -> Void
}

class ViewControllerAgregar: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfPuntos: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btnguardar: UIButton!
    
    var delegado: protocoloAgregaJugador!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    @IBAction func PressButton(_ sender: UIButton) {
        if (sender == btnguardar){
            let nom = tfNombre.text!
            let punt = Int(tfPuntos.text!)
            let em = tfEmail.text!
            
            if nom != "" && punt != nil && em != "" {
                delegado.agregaJugador(nombre: nom, puntos: punt!, email: em)
            }
        }
        navigationController!.popViewController(animated: true)
    }
 

}
