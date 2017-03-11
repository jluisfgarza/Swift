//
//  TableViewController.swift
//  EjercicioPersistencia
//
//  Created by Juan Luis Flores on 3/9/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrDatosNuevo = NSDictionary()
    var listaArticulos : NSMutableArray!
    var index = Int()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        listaArticulos = NSArray(contentsOfFile: path!) as! NSMutableArray!
        
        if listaArticulos == nil{
        
            listaArticulos = NSMutableArray()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaArticulos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let lista = listaArticulos[indexPath.row] as? NSDictionary
        
        cell.textLabel?.text = lista?.value(forKey: "id") as? String
        cell.detailTextLabel?.text = lista?.value(forKey: "descripcion") as! String?

        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let viewDetalle = segue.destination as! ViewController
        
        if segue.identifier == "Modify" {
            
            index = (tableView.indexPathForSelectedRow?.row)!
            let lista = listaArticulos[index] as? NSDictionary
            viewDetalle.valores = lista!
            viewDetalle.status = "Modify"
            viewDetalle.apuntador = self
            viewDetalle.title = "Modifica"
            
            if let navController = self.navigationController {
            
                navController.popViewController(animated: true)
            }
            
        } else if segue.identifier == "Add" {
            
            viewDetalle.status = "Add"
            viewDetalle.apuntador = self
            viewDetalle.title = "Agrega"
            
            if let navController = self.navigationController {
            
                navController.popViewController(animated: true)
            }
        }
    }		
    
    func agrega(articulo: NSMutableDictionary){
        
        listaArticulos.add(articulo)
        tableView.reloadData()
    }
    
    func modifica(articulo: NSMutableDictionary){
        
        listaArticulos.replaceObject(at: index, with: articulo)
        tableView.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        listaArticulos.write(toFile: path!, atomically: true)
    }

}
