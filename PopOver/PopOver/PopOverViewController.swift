//
//  PopOverViewController.swift
//  PopOver
//
//  Created by alumno on 4/17/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class PopOverViewController: UIViewController {

    @IBOutlet weak var tfdato: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        preferredContentSize = CGSize(width: 250, height: 100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func oprimo(_ sender: UIButton) {
        let vista1 = presentingViewController as! ViewController
        vista1.datoRecibido = tfdato.text!
        vista1.actualizaDato()
        dismiss(animated: false, completion: nil)
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
