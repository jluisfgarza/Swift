//
//  ViewController.swift
//  Persistent Plist
//
//  Created by alumno on 3/2/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(aplicacionTerminara(notificacion:)), name: .UIApplicationDidEnterBackground, object: app)
        
        // Do any additional setup after loading the view, typically from a nib.
        let filePath = dataFilePath()
        if FileManager.default.fileExists(atPath: filePath){
            let arreglo = NSArray(contentsOfFile: filePath)
            tf1.text = arreglo![0] as? String
            tf2.text = arreglo![1] as? String
            tf3.text = arreglo![2] as? String
            tf4.text = arreglo![3] as? String

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dataFilePath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentDirectory = paths[0]
        let filepath = documentDirectory + "/datos.plist"
        
        print(filepath)
        return filepath
    }

    func aplicacionTerminara(notificacion: NSNotification) {
        let arreglo : NSMutableArray = []
        arreglo.addObjects(from: [tf1.text!,tf2.text!,tf3.text!,tf4.text!])
        arreglo.write(toFile: dataFilePath(), atomically: true)
    }

}

