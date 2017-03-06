//
//  ViewController.swift
//  SettingsStarterA16
//
//  Created by Yolanda Martinez on 10/8/16.
//  Copyright © 2016 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfSonido: UITextField!
    @IBOutlet weak var tfExperiencia: UITextField!
    @IBOutlet weak var tfVolumen: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector (cargaSettings), name: .UIApplicationDidBecomeActive, object: UIApplication.shared)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        cargaSettings()
    }
    
    func cargaSettings() {
        UserDefaults.standard.synchronize()
        let defaults = UserDefaults.standard
        tfNombre.text = defaults.value(forKey: "nombreUsuario") as? String
        tfSonido.text = String(describing: defaults.bool(forKey: "sonido"))
        //tfVolumen.text = String(describing: defaults.float(forKey: "volumen"))
        tfVolumen.text = String(describing: defaults.float(forKey: "volumen") * 100) + "%"

        tfExperiencia.text = defaults.value(forKey: "experiencia") as? String

        
    }
}

