//
//  SixthViewController.swift
//  Tabbed App
//
//  Created by alumno on 3/23/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var tfPw: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaNavigation = segue.destination as! UINavigationController
        let vistaTable = vistaNavigation.topViewController as! FourthTableViewController
        
        vistaTable.pw = tfPw.text!
    }
 

}
