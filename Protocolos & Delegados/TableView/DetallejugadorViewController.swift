//
//  DetallejugadorViewController.swift
//  TableView
//
//  Created by alumno on 2/9/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class DetallejugadorViewController: UIViewController {

    @IBOutlet weak var lblnombre: UILabel!
    @IBOutlet weak var lblpuntos: UILabel!
    @IBOutlet weak var lblemail: UILabel!

    
    var nombre: String!
    var email: String!
    var puntos : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        lblnombre.text = String(describing: nombre!)
        lblpuntos.text = String(describing: puntos!)
        lblemail.text = String(describing: email!)
        
        self.title = nombre
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

}
