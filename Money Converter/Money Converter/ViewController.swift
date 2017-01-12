//
//  ViewController.swift
//  Money Converter
//
//  Created by alumno on 1/12/17.
//  Copyright © 2017 a01280767. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfRate: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDollars: UITextField!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img.image = #imageLiteral(resourceName: "dollarSign")
        let tap = UITapGestureRecognizer(target: self, action: #selector(hidekeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Action Methods
    
    @IBAction func hidekeyboard(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func Calc(_ sender: UIButton) {
        
        let rate = Double(tfRate.text!)
        let pesos = Double(tfPesos.text!)
        if rate != nil && pesos != nil {
            
            let dollars = pesos! / rate!
            tfDollars.text = "\(dollars)"
            view.endEditing(true)

        }
        else {
            
            let alert = UIAlertController(title: "ERROR", message: "Use numeric values", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
            
            present(alert, animated: true, completion: nil)
        }
    }
}

