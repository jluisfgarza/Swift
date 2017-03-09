//
//  ViewController.swift
//  Ejercicio de Persistencia
//
//  Created by alumno on 3/9/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfDescription: UITextField!
    @IBOutlet weak var tfCantidad: UITextField!
    @IBOutlet weak var btnGuardar: UIButton!
    
    let tableView : TableViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Agrega"  {
            
            addproduct(myiD : tfID.text!, descrip : tfDescription.text!, cantidad: tfCantidad.text!)
        }
        
        if segue.identifier == "Modifica" {
            //modificaproduct()
        }
    }
    
    func addproduct (myiD : String, descrip : String, cantidad : String){
        
        let id = String(myiD)
        let des = String(descrip)
        let cant = Int(cantidad)
        let dic : NSDictionary = ["id" : id!, "descripcion":  des!, "existencia" : cant!]
        tableView.listaArticulos.add(dic)
    }
    
    func modificaproduct (myiD : String, descrip : String, cantidad : String){
       /*
        let id = myiD
        let descrip = descrip
        let cant = Int(cantidad)
        let dic : NSDictionary = ["id" : id,"descripcion":  descrip,"existencia" : cant]
        tableView.listaArticulos.add(dic)*/
            
    }

}

