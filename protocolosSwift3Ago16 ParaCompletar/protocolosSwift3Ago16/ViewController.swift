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
    
    var nombre: String!
    var calificacion: Int!
    var comentarios : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbNombreAlumno.text = String(describing: nombre!)
        lbCalificacion.text = String(describing: calificacion!)
        textViewComentarios.text = String(describing: comentarios!)
        
        self.title = nombre
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - actions
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "califica" {
            let viewCalif = segue.destination as! ViewControllerCalifica
            
            viewCalif.delegado = self
        }
    }
}

