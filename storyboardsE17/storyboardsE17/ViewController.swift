//
//  ViewController.swift
//  storyboardsE17
//
//  Created by Yolanda Martinez on 1/25/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!

    var nombre : String!
    var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindInformation(unwindSegue:
        UIStoryboardSegue) {
        //Empty on purpose
        //only used to return
    }
    
    @IBAction func unwindeEdit(unwindSegue:
        UIStoryboardSegue) {
        //Empty on purpose
        //only used to return
        tfNombre.text = nombre
        tfEmail.text = email
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if segue.identifier == "info" {
            let vistaInfo = segue.destination as! ViewControllerInformation
            vistaInfo.image = imgFoto.image
            vistaInfo.ancho = imgFoto.frame.size.width
            vistaInfo.altura = imgFoto.frame.size.height
        }
        else {
            let vistaEditar = segue.destination as! ViewControllerEdit
            vistaEditar.nombre = tfNombre.text!
            vistaEditar.email = tfEmail.text!
        }
    }
}

