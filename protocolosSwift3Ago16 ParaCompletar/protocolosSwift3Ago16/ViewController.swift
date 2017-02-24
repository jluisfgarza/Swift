//
//  ViewController.swift
//  protocolosSwift3Ago16
//
//  Created by Yolanda Martinez on 9/20/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbNombreAlumno: UILabel!
    @IBOutlet weak var lbCalificacion: UILabel!
    @IBOutlet weak var textViewComentarios: UITextView!
    
    var actividad: Actividad!
    var delegado : protocoloCalificaAlumno!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNombreAlumno.text = actividad.nombreAlum
        lbCalificacion.text = "\(actividad.calif!)"
        textViewComentarios.text = actividad.coment
        
        title = "Calificar"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - actions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "califica" {
            
            let viewCalifica = segue.destination as! ViewControllerCalifica
            viewCalifica.delegado = delegado
        }
        
    }
}

