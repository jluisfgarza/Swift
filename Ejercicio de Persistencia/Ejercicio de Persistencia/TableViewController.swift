//
//  TableViewController.swift
//  Ejercicio de Persistencia
//
//  Created by alumno on 3/9/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listaArticulos: NSMutableArray!
    var viewC : ViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaArticulos = NSMutableArray()
        title = "Articulos"
        //let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        //listaArticulos = NSMutableArray(contentsOfFile: path!)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaArticulos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        let dic = listaArticulos[indexPath.row] as! NSMutableArray
        
        cell.textLabel?.text = (dic.value(forKey: "id") as? String)!
        //let cantidad = (dic.value(forKey: "cant") as? NSNumber)!
        //cell.tfCantidad.text = string(from: cantidad)
        cell.detailTextLabel?.text = dic.value(forKey: "desc") as? String
        
        // Configure the cell...

        return cell
    }
 

    }
