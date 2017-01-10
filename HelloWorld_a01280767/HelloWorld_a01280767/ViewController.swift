//
//  ViewController.swift
//  HelloWorld_a01280767
//
//  Created by alumno on 1/9/17.
//  Copyright © 2017 a01280767. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextField_Name: UITextField!
    @IBOutlet weak var Hi_Message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Button_Press(_ sender: Any) {
        Hi_Message.text = "Hello " + TextField_Name.text!
    }
    
    @IBAction func KeyboardExit(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}

