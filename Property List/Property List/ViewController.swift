//
//  ViewController.swift
//  Property List
//
//  Created by alumno on 2/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var tipo: UILabel!
    @IBOutlet weak var capacidad: UILabel!
    @IBOutlet weak var precio: UILabel!

    var arrDiccionarios: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        arrDiccionarios = NSArray(contentsOfFile: path!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Actions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrDiccionarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        cell.textLabel?.text = dic.value(forKey: "Tipo") as! String?
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        
        tipo.text = dic.value(forKey: "Tipo") as! String?
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let preciof = dic.value(forKey: "Precio") as! NSNumber
        precio.text = formatter.string(from: preciof)
        capacidad.text = dic.value(forKey: "Capacidad") as! String?

        let url = dic.value(forKey: "UrlLimg") as! String
        let nurl = URL(string: url)
        let imgData = NSData(contentsOf: nurl!)
        img.image = UIImage(data: imgData as! Data)
        
    }

}

