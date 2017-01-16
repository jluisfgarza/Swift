//
//  ViewController.swift
//  UIView
//
//  Created by alumno on 1/16/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var Hola: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var myswitch: UISwitch!
    @IBOutlet weak var myview1: UIView!
    @IBOutlet weak var myview: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateswitchstate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Action Methods

    @IBAction func slide(_ sender: UISlider) {
       
        let pos = myview1.frame.width - img.frame.width
        img.frame.origin.x = pos * CGFloat(sender.value)
    }
    
    
    @IBAction func segmentchange(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 1 {
            
            UIView.animate( withDuration: 1, animations: {
                self.Hola.frame.origin.x = self.view.frame.width - self.img.frame.width/2
            } )
        }
        else {
            UIView.animate( withDuration: 1, animations: {
                self.Hola.frame.origin.x = 0
            } )
        }
    }
    
    
    func updateswitchstate() {
        
        if myswitch.isOn {
        
            myview.backgroundColor = UIColor.blue
        }
        if !myswitch.isOn {
            
            myview.backgroundColor = UIColor.red
        }
    }
    
    @IBAction func changeswitch(_ sender: Any) {
   
        updateswitchstate()
    }
}

    
