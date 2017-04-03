//
//  ViewController.swift
//  Quartz
//
//  Created by alumno on 4/3/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vistaInfo: claseVista!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        vistaInfo.mostrarcapa = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func cambioSwtch(_ sender: UISwitch) {
        vistaInfo.mostrarcapa = sender.isOn
        vistaInfo.setNeedsDisplay()
    }
}

