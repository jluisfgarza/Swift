//
//  EsferaViewController.swift
//  Cuerpos	Geométricos
//
//  Created by alumno on 2/1/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class EsferaViewController: UIViewController {
    
    @IBOutlet weak var tfRadio: UITextField!
    @IBOutlet weak var btCancelar: UIButton!
    @IBOutlet weak var btGuardar: UIButton!

    var radio : String!
    var volume : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    

}
