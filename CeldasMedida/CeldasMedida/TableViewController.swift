//
//  TableViewController.swift
//  CeldasMedida
//
//  Created by Juan Luis Flores on 2/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
     var arrDiccionarios : NSArray!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Productos"
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        arrDiccionarios = NSArray(contentsOfFile: path!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrDiccionarios.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> CeldaTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CeldaTableViewCell
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        cell.TFTipo.text = (dic.value(forKey: "Tipo") as? String)!
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        let precio = (dic.value(forKey: "Precio") as? NSNumber)!
        cell.TFPrecio.text = formatter.string(from: precio)
        cell.TFCapacidad.text = dic.value(forKey: "Capacidad") as? String
        let sUrl = dic.value(forKey: "UrlLimg") as? String
        let nsurl = URL(string: sUrl!)
        let imagenData = NSData(contentsOf: nsurl!)
        cell.ImagenFoto.image = UIImage(data: imagenData as! Data)

        // Configure the cell...

        return cell
    }

   
}
